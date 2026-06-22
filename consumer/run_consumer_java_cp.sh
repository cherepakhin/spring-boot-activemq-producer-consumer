set MAVEN_REPO_LOCAL=/home/vasi/.m2/repository
/usr/lib/jvm/java-1.11.0-openjdk-amd64/bin/java \
-Dfile.encoding=UTF-8 \
-classpath /home/vasi/prog/java/spring-boot/spring-boot-activemq-producer-consumer/consumer/target/classes:\
/home/vasi/prog/java/spring-boot/spring-boot-activemq-producer-consumer/dto/target/classes:\
/home/vasi/.m2/repository/org/springframework/boot/spring-boot-starter-activemq/2.1.5.RELEASE/spring-boot-starter-activemq-2.1.5.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/boot/spring-boot-starter/2.1.5.RELEASE/spring-boot-starter-2.1.5.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/boot/spring-boot/2.1.5.RELEASE/spring-boot-2.1.5.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/boot/spring-boot-autoconfigure/2.1.5.RELEASE/spring-boot-autoconfigure-2.1.5.RELEASE.jar:/home/vasi/.m2/repository/org/springframework/boot/spring-boot-starter-logging/2.1.5.RELEASE/spring-boot-starter-logging-2.1.5.RELEASE.jar:\
/home/vasi/.m2/repository/ch/qos/logback/logback-classic/1.2.3/logback-classic-1.2.3.jar:\
/home/vasi/.m2/repository/ch/qos/logback/logback-core/1.2.3/logback-core-1.2.3.jar:\
/home/vasi/.m2/repository/org/apache/logging/log4j/log4j-to-slf4j/2.11.2/log4j-to-slf4j-2.11.2.jar:\
/home/vasi/.m2/repository/org/apache/logging/log4j/log4j-api/2.11.2/log4j-api-2.11.2.jar:\
/home/vasi/.m2/repository/org/slf4j/jul-to-slf4j/1.7.26/jul-to-slf4j-1.7.26.jar:\
/home/vasi/.m2/repository/javax/annotation/javax.annotation-api/1.3.2/javax.annotation-api-1.3.2.jar:\
/home/vasi/.m2/repository/org/yaml/snakeyaml/1.23/snakeyaml-1.23.jar:\
/home/vasi/.m2/repository/org/springframework/spring-jms/5.1.7.RELEASE/spring-jms-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/spring-beans/5.1.7.RELEASE/spring-beans-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/spring-messaging/5.1.7.RELEASE/spring-messaging-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/spring-tx/5.1.7.RELEASE/spring-tx-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/apache/activemq/activemq-broker/5.15.9/activemq-broker-5.15.9.jar:\
/home/vasi/.m2/repository/org/apache/activemq/activemq-client/5.15.9/activemq-client-5.15.9.jar:/home/vasi/.m2/repository/org/fusesource/hawtbuf/hawtbuf/1.11/hawtbuf-1.11.jar:\
/home/vasi/.m2/repository/org/apache/geronimo/specs/geronimo-j2ee-management_1.1_spec/1.0.1/geronimo-j2ee-management_1.1_spec-1.0.1.jar:\
/home/vasi/.m2/repository/org/apache/activemq/activemq-openwire-legacy/5.15.9/activemq-openwire-legacy-5.15.9.jar:\
/home/vasi/.m2/repository/com/google/guava/guava/18.0/guava-18.0.jar:\
/home/vasi/.m2/repository/com/fasterxml/jackson/core/jackson-databind/2.9.8/jackson-databind-2.9.8.jar:\
/home/vasi/.m2/repository/com/fasterxml/jackson/core/jackson-annotations/2.9.0/jackson-annotations-2.9.0.jar:\
/home/vasi/.m2/repository/com/fasterxml/jackson/core/jackson-core/2.9.8/jackson-core-2.9.8.jar:\
/home/vasi/.m2/repository/javax/jms/javax.jms-api/2.0.1/javax.jms-api-2.0.1.jar:\
/home/vasi/.m2/repository/org/springframework/boot/spring-boot-starter-web/2.1.5.RELEASE/spring-boot-starter-web-2.1.5.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/boot/spring-boot-starter-json/2.1.5.RELEASE/spring-boot-starter-json-2.1.5.RELEASE.jar:\
/home/vasi/.m2/repository/com/fasterxml/jackson/datatype/jackson-datatype-jdk8/2.9.8/jackson-datatype-jdk8-2.9.8.jar:\
/home/vasi/.m2/repository/com/fasterxml/jackson/datatype/jackson-datatype-jsr310/2.9.8/jackson-datatype-jsr310-2.9.8.jar:\
/home/vasi/.m2/repository/com/fasterxml/jackson/module/jackson-module-parameter-names/2.9.8/jackson-module-parameter-names-2.9.8.jar:\
/home/vasi/.m2/repository/org/springframework/boot/spring-boot-starter-tomcat/2.1.5.RELEASE/spring-boot-starter-tomcat-2.1.5.RELEASE.jar:\
/home/vasi/.m2/repository/org/apache/tomcat/embed/tomcat-embed-core/9.0.19/tomcat-embed-core-9.0.19.jar:\
/home/vasi/.m2/repository/org/apache/tomcat/embed/tomcat-embed-el/9.0.19/tomcat-embed-el-9.0.19.jar:\
/home/vasi/.m2/repository/org/apache/tomcat/embed/tomcat-embed-websocket/9.0.19/tomcat-embed-websocket-9.0.19.jar:\
/home/vasi/.m2/repository/org/hibernate/validator/hibernate-validator/6.0.16.Final/hibernate-validator-6.0.16.Final.jar:\
/home/vasi/.m2/repository/javax/validation/validation-api/2.0.1.Final/validation-api-2.0.1.Final.jar:\
/home/vasi/.m2/repository/org/jboss/logging/jboss-logging/3.3.2.Final/jboss-logging-3.3.2.Final.jar:\
/home/vasi/.m2/repository/com/fasterxml/classmate/1.4.0/classmate-1.4.0.jar:\
/home/vasi/.m2/repository/org/springframework/spring-web/5.1.7.RELEASE/spring-web-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/spring-webmvc/5.1.7.RELEASE/spring-webmvc-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/spring-aop/5.1.7.RELEASE/spring-aop-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/spring-context/5.1.7.RELEASE/spring-context-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/spring-expression/5.1.7.RELEASE/spring-expression-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/projectlombok/lombok/1.18.8/lombok-1.18.8.jar:\
/home/vasi/.m2/repository/org/slf4j/slf4j-api/1.7.26/slf4j-api-1.7.26.jar:\
/home/vasi/.m2/repository/org/springframework/spring-core/5.1.7.RELEASE/spring-core-5.1.7.RELEASE.jar:\
/home/vasi/.m2/repository/org/springframework/spring-jcl/5.1.7.RELEASE/spring-jcl-5.1.7.RELEASE.jar \
ru.perm.v.activemq.consumer.SpringBootActivemqConsumerApplication