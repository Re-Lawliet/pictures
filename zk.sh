#!/bin/bash
if [ $# -lt 1 ]
then
  echo "Input Args Error....."
  exit
fi
for i in hadoop102 hadoop103 hadoop104
do
case $1 in
start)
   ssh $i /opt/module/zookeeper-3.5.7/bin/zkServer.sh start
;;
status)
   echo "================= $i Zookeeper ================"
   ssh $i /opt/module/zookeeper-3.5.7/bin/zkServer.sh status
;;
stop)
   ssh $i /opt/module/zookeeper-3.5.7/bin/zkServer.sh stop
;;
*)
   echo "Input Args Error ...."
   exit
;;
esac
done 
