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

