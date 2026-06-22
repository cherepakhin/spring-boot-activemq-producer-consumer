### Простой приемник сообщений ActiveMQ

Описание см. в ~/prog/java/spring-boot/spring-boot-activemq-Producer-consumer/spring-boot-activemq-producer-example

Запуск (./run.sh):

````shell

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
./mvnw spring-boot:run
````

Есть конвертор для принятых сообщений в конфигурации consumer в StudentConfig.

````java
factory.setMessageConverter(jacksonJmsMessageConverter());
````

В StudentConsumer сообщения приходят в JSON и конвертируются в Java __ОБЪЕКТЫ__. 
И StudentConsumer обрабатывает уже обычные java-__ОБЪЕКТЫ__ Student.

В StudentConsumer:  

````java
@JmsListener(destination = "${activemq.destination}", containerFactory = "jmsFactory")
public void processToDo(Student student) {
    ....
}
````

Из конфигурации берется имя очереди __activemq.destination__.
1. Запустить producer
/home/vasi/prog/java/spring-boot/spring-boot-activemq-Producer-consumer/spring-boot-activemq-producer-example
2. Запустить consumer ./run.sh

````shell
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
./mvnw spring-boot:run
````

Выполнить запрос к producer:

````shell
http http://192.168.1.79:8080/student/send/102
````

````shell
HTTP/1.1 200

{
"id": 102,
"name": "name102"
}
````

В консоли Consumer будет сообщение:

````text
INFO 14826 --- [enerContainer-1] com.asbnotebook.jms.StudentConsumer      : Consumer> Student(id=102, name=name102)
````

Проверка активности порта:

````shell
$ sudo netstat -tulnp | grep 8161
[sudo] password for vasi:          
tcp6       0      0 :::8161                 :::*                    LISTEN      2523385/java
````

Показать все записи:

````shell
http :8001/student/getLast
````

Стереть принятые данные:

````shell
http POST :8001/student/clearAll
````