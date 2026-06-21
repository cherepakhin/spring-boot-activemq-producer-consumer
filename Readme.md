### Spring Boot and ActiveMQ

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

