#!/bin/bash
# author wy_ctl
# ./wy_ctl.sh start 启动
# ./wy_ctl.sh stop 停止
# ./wy_ctl.sh restart 重启
# ./wy_ctl.sh status 状态
AppName=wuyu-cost.jar
# 服务器地址
# IP=0.0.0.0

# mysql 数据库用户名
DbServ=cost_db
DbName=wuyu_cost
DbUserName=root
DbPassword=password

#Redis 
RedisServ=cost_redis
RedisPort=6379
RedisPwd=password

# 文件存储路径
FilePath=/usr/local/wuyusoft/uploads
# JVM参数
JVM_OPTS="-Dname=$AppName -Duser.timezone=Asia/Shanghai -Xms512M -Xmx512M -XX:PermSize=256M -XX:MaxPermSize=512M -XX:+HeapDumpOnOutOfMemoryError -XX:+PrintGCDateStamps  -XX:+PrintGCDetails -XX:NewRatio=1 -XX:SurvivorRatio=30 -XX:+UseParallelGC -XX:+UseParallelOldGC"
DB_OPTS="--spring.datasource.druid.master.url=jdbc:mysql://$DbServ:3306/$DbName?useUnicode=true&characterEncoding=utf8&zeroDateTimeBehavior=convertToNull&useSSL=true&serverTimezone=GMT%2B8 --spring.datasource.druid.master.username=$DbUserName --spring.datasource.druid.master.password=$DbPassword"
Redis_OPTS="--spring.redis.host=$RedisServ --spring.redis.port=$RedisPort --spring.redis.password=$RedisPwd"
APP_OPTS="--oaker.profile=$FilePath"
APP_HOME=/usr/local/wuyusoft/
LOG_PATH=/usr/local/wuyusoft/logs/$AppName.log

if [ "$1" = "" ];
then
    echo -e "\033[0;31m 未输入操作名 \033[0m  \033[0;34m {start|stop|restart|status} \033[0m"
    exit 1
fi

if [ "$AppName" = "" ];
then
    echo -e "\033[0;31m 未输入应用名 \033[0m"
    exit 1
fi

function start()
{
    PID=`ps -ef |grep java|grep $AppName|grep -v grep|awk '{print $2}'`

        if [ x"$PID" != x"" ]; then
            echo "$AppName is running..."
        else
                nohup java -jar  $JVM_OPTS $AppName $DB_OPTS $Redis_OPTS $APP_OPTS >> $APP_HOME/logs/server.log 2>&1 &
                echo "Start $AppName success..."
        fi
}

function stop()
{
    echo "Stop $AppName"

        PID=""
        query(){
                PID=`ps -ef |grep java|grep $AppName|grep -v grep|awk '{print $2}'`
        }

        query
        if [ x"$PID" != x"" ]; then
                kill -TERM $PID
                echo "$AppName (pid:$PID) exiting..."
                while [ x"$PID" != x"" ]
                do
                        sleep 1
                        query
                done
                echo "$AppName exited."
        else
                echo "$AppName already stopped."
        fi
}

function restart()
{
    stop
    sleep 2
    start
}

function status()
{
    PID=`ps -ef |grep java|grep $AppName|grep -v grep|wc -l`
    if [ $PID != 0 ];then
        echo "$AppName is running..."
    else
        echo "$AppName is not running..."
    fi
}

case $1 in
    start)
    start;;
    stop)
    stop;;
    restart)
    restart;;
    status)
    status;;
    *)

esac


tail -f /dev/null 
