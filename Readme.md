### Spring Boot and ActiveMQ

Приемник сообщений из очереди:
[spring-boot-activemq-consumer-example](./spring-boot-activemq-consumer-example)

Отправитель сообщения в очередь:
[spring-boot-activemq-producer-example](./spring-boot-activemq-producer-example)

Порядок проведения теста:
 1. Запустить приемник [run_consumer.sh](./spring-boot-activemq-consumer-example/run_consumer.sh)
 2. Запустить отправитель [run_producer.sh](./spring-boot-activemq-consumer-example/run_producer.sh)
 3. Отправить несколько сообщений [send_10.sh](./spring-boot-activemq-consumer-example/send_10.sh)
 4. Результаты можно в логах консоли получателя [spring-boot-activemq-consumer-example](./spring-boot-activemq-consumer-example):
    
    ````text
    ....
    INFO 230519 --- [enerContainer-1] ru.perm.v.activemq.jms.StudentConsumer   : Received from queue 'student' OBJECT: Student{id=9, name='name_9'}
    ....
    ````

