oc login -u=admin -p=admin
  oc new-project rabbit36
  oc project rabbitmq:3.6
  oc new-project rabbit37
  oc project rabbitmq:3.7
  oc new-project rabbit373
  oc project rabbitmq:3.7.3
  oc new-project rabbit3610
  oc project rabbitmq:3.6.10
  oc new-project rabbit367
  oc project rabbitmq:3.6.7
  oc new-project mariadb5
  oc project mariadb:5
  oc new-project mariadb10132
  oc project mariadb:10.1.32
  oc new-project kibana5
  oc project kibana:5
  oc new-project kibana4
  oc project kibana:4
  oc new-project ghost122
  oc project ghost:1.22
  oc new-project ghostalpine-1222
  oc project ghost:1.22.2-alpine
  oc new-project ghost-1-alpine
  oc project ghost:1-alpine
  oc new-project cassandra3
  oc project cassandra:3
  oc new-project cassandra22
  oc project cassandra:2.2
  oc new-project cassandra2120
  oc project cassandra:2.1.20
  oc new-project drupal758
  oc project drupal:7.58
  oc new-project drupal:83
  oc project drupal:8.3
  oc new-project sonarqube71
  oc project sonarqube:7.1
  oc new-project sonarqubealpine
  oc project sonarqube:alpine
  oc new-project jruby-9jdk
  oc project jruby:9-jdk
  oc new-project jruby-91alpine
  oc project jruby:9.1-alpine
  oc new-project solr7slim
  oc project solr:7-slim
  # create with oc run
  oc run percona55 --image=percona:5.5 --namespace=default
  oc run percona56 --image=percona:5.6 --namespace=default
  oc run percona57 --image=percona:5.7 --namespace=default
  oc run solr66 --image=solr:6.6 --namespace=default
  oc run solr72-alpine --image=solr:7.2-alpine --namespace=default
  oc run redmine33 --image=redmine:3.3 --namespace=default
  oc run redmine3passenger --image=redmine:3-passenger --namespace=default
  oc run redmine32 --image=redmine:3.2 --namespace=default
  oc run redmine345 --image=redmine:3.4.5 --namespace=default
  oc run amazonlinuxwithsources --image=amazonlinux:with-sources --namespace=default
  oc run erlang19slim --image=erlang:19-slim --namespace=default
  oc run erlang19slim --image=erlang:19-slim --namespace=default
  oc run erlang193 --image=erlang:19.3 --namespace=default
  oc run erlang20slim --image=erlang:20-slim --namespace=default
  oc run pypy3 --image=pypy:3 --namespace=default
  oc run pypy2 --image=pypy:2 --namespace=default
  oc run pypyslim --image=pypy:slim --namespace=default
  oc run crate23 --image=crate:2.3 --namespace=default
  oc run crate22 --image=crate:2.2 --namespace=default
  oc run crate21 --image=crate:2.1 --namespace=default
  oc run gcc7 --image=gcc:7 --namespace=default
  oc run gcc64 --image=gcc:6.4 --namespace=default
  oc run gcc55 --image=gcc:5.5 --namespace=default
  oc run gcc49 --image=gcc:4.9 --namespace=default
  oc run julia --image=julia --namespace=default
  oc run celery4 --image=celery:4 --namespace=default
  oc run celery3 --image=celery:3 --namespace=default
  oc run bonita763 --image=bonita:7.6.3 --namespace=default
  oc run cirros --image=cirros --namespace=default
  oc run haskell --image=haskell --namespace=default
  oc run thrift --image=thrift --namespace=default
  oc run photon10 --image=photon:1.0 --namespace=default
  oc run photon20 --image=photon:2.0 --namespace=default
  oc run crux31 --image=crux:3.1 --namespace=default
  oc run crux30 --image=crux:3.0 --namespace=default
  oc run swift31 --image=swift:3.1 --namespace=default
  oc run swift40 --image=swift:4.0 --namespace=default
  oc run swift310 --image=swift:3.1.0 --namespace=default
