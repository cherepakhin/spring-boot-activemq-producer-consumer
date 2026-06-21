### Spring Boot и Apache ActiveMQ

Приемник сообщений из очереди:
[consumer](./consumer)

Отправитель сообщения в очередь:
[producer](./producer)

Порядок проведения теста:
 1. Запустить приемник [run_consumer.sh](./consumer/run_consumer.sh)
 2. Запустить отправитель [run_producer.sh](./consumer/run_producer.sh)
 3. Отправить несколько сообщений [send_10.sh](./producer/send_10.sh)
 4. Результаты можно в логах консоли получателя [consumer](./consumer):
    
    ````text
    ....
    INFO 230519 --- [enerContainer-1] ru.perm.v.activemq.jms.StudentConsumer   : Received from queue 'student' OBJECT: Student{id=9, name='name_9'}
    ....
    ````

### Об ActiveMQ

Установлен в v:/home/vasi/po/activemq/apache-activemq-6.2.6

Об установке в [Настройка ActiveMQ в Linux](https://v.perm.ru/index.php/instrumenty-devops/activemq-setup)

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

Admin console ActiveMQ [http://v:8161/admin/](http://v:8161/admin/)

Очереди: [http://v:8161/admin/queues.jsp](http://v:8161/admin/queues.jsp)

Очередь destination 1: [http://v:8161/admin/browse.jsp?JMSDestination=destination1](http://v:8161/admin/browse.jsp?JMSDestination=destination1)

### Тестирование

Посылка 100 сообщениЙ:

````shell
http POST http://192.168.1.79:8002/student/send_many/100
````

Где:
http  - [httpie](https://httpie.io/)
`192.168.1.79` - IP хоста приложения, где запущен spring-boot продюсер.
