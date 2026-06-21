### Producer для ActiveMQ.

Запустить ActiveMQ:

````shell
vasi@vasi-note:~/po/activemq/apache-activemq-6.2.6$ ./run_producer.sh
````

Запуск программы:

````shell
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
./mvnw spring-boot:run
````

Будет запущен producer и REST сервис. Отправка сообщений производится через GET запрос:

````shell
http http://localhost:8002/student/send_one/101
````

101 - id студента

Log:

````text
INFO 501414 --- [nio-8080-exec-1] ucerExampleApplication$StudentController : Sending message Student{id=101, name='name101'}
````
ActiveMq в /home/vasi/po/activemq/apache-activemq-6.2.6

Управление:

````shell
bin/activemq start
````

````shell
bin/activemq console
````

````shell
bin/activemq stop
````

Admin console ActiveMQ [http://127.0.0.1:8161/admin/](http://127.0.0.1:8161/admin/)

Очереди: [http://127.0.0.1:8161/admin/queues.jsp](http://127.0.0.1:8161/admin/queues.jsp)
Очередь destination 1: [http://127.0.0.1:8161/admin/browse.jsp?JMSDestination=destination1](http://127.0.0.1:8161/admin/browse.jsp?JMSDestination=destination1)

Посылка 100 сообщениЙ:

````shell
http POST http://192.168.1.79:8002/student/send_many/100
````

