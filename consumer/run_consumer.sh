export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
./mvnw clean spring-boot:run

#./mvnw spring-boot:run -Dspring-boot.run.main-class=ru.perm.v.activemq.consumer.SpringBootActivemqConsumerApplication
# java -cp target/app.jar -Dloader.main=com.example.MyApp org.springframework.boot.loader.PropertiesLauncher