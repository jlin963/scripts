#!/bin/bash

sanity_check() {
    oc version 
    oc get pods
    if [[ "$?" == 0  ]]; then 
      echo "openshift looks ok."
    else
      echo "Precondition for oc client failed.  exiting!"
      exit 22
    fi
}
createDockerPull() {
  NS=tst-docker-pull
  PODS=1
  if [[ -z $NS ]] ; then
    echo "Sweet, NS: $NS not found.  We can begin."
  else
      echo "Dang it, NS: $NS found, FRENZY needs to delete this NS!"
      burnItDown $NS
  fi 
  echo "TEST: Deploying with docker pull using $NEW_APP, we want to see $PODS pods"
  docker pull alpine
  oc new-project $NS
  oc new-app docker.io/alpine:latest
  echo "PODS equals: $PODS"
  until [[ `oc get pods | grep -v STATUS | grep -v build | grep -v deploy | grep Completed | wc -l` -ge "$PODS" ]] ; do
      echo "createDockerPull: Waiting on POD(s) to come up, so far: `oc get pods| grep -v NAME`"
      sleep 3
  done
  echo "Done waiting!"
  sleep 5
  for i in `oc get pods | grep -v build | grep -v deploy | grep -v NAME | cut -d ' ' -f 1` ; do
      tstAnnotate $i
      retVal=$?
      passed=0
      failed=0
      if [[ retVal -gt 0  ]] ; then
          echo "FAIL: createDockerPull Failed POD Annotations Test on $i. Failing fast!"
          (( failed++ ))
          exit $retVal
      else
          echo "Passed POD Annotations on $i"
          (( passed++ ))
      fi
  done
}

tstAnnotate() {
  my_pods=$1
  echo "Now Testing POD Annoations on: $my_pod"
  echo "Checking for BlackDuck Annotations..."
  a_state=$(oc describe pod $my_pod | grep -i BlackDuck)
  echo "a_state"
  if [[ $a_state -eq "" ]] ; then
      echo "ERROR: There appears to be no POD Annotations present on $my_pod!"
      exit 1;
  else
      echo "BlackDuck OpsSight POD Annotations found on $my_pod! TEST PASS"
  fi
}

burnItDown() {
  echo "[burnitdown] START!!!"
  while oc get ns | grep -q -i $NS ; do
      echo "`date` [[burnItDown]] still waiting `oc delete project $NS`"
      sleep 8
  done            
  echo "[burnitdown] DONE!!!"
}

sanity_check
createDockerPull
burnItDown
