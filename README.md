# Spring-Cloud-Zookeeper-Sample
- Externalize configurations from application in microservice.
- Use of Spring Cloud Zookeeper to bind application properties from zNodes present in Zookeeper.  
- Auto Refresh (update) of properties in the running Application on making any change of property value in the Zookeeper
              (No need for manually calling actuator's - refresh endpoint)

Pre-requisite:
1. Java
2. Gradle
3. Zookeeper

Steps to run the application: 
1. Checkout repo.
2. copy `create-zookeeper-app-zNodes.sh`from zookeeper_scripts directory of this project to `zookeeper's -> bin` folder.
3. start zookeeper-shell and the use `create-zookeeper-app-zNodes.sh` to create all the required zNodes for the application.
4. if zookeeper is running on different machine, change value for `spring.cloud.zookeeper.connect-string` in `bootstrap.properties`.
5. run `sh run-app.sh` to build and run the appliaction.
6. once the application starts, run the below CURL command which will give, 
           Greeting meesage using two properties ->  
              1. greeting.meesage = "Hello" and,  
              2. greeting.name = "Satyam"  
           from the zookeeper.
        
        curl -X GET http://localhost:8081/greeting
           - Response -> "Hello Satyam"


-- Once the above curl request is successful, it means the properties are successfully binded with zNodes in zookeeper.


Steps to verify auto refresh of property in the application:
1. copy `change-name-zNode-value.sh` from zookeeper_scripts directory of this project to `zookeeper's -> bin` folder.
2. start zookeeper-shell and the use `change-name-zNode-value.sh` which will change the value of zNode `greeting.name` from initial        value"Satyam" to new value "Singh".
3. Logs of application will show the refresh.keys with the name of property changed. In this case, 
            
            -> refresh.keys [greeting.name]

4. run the below CURL command to get the response with updated property value
    
       curl -X GET http://localhost:8081/greeting
          - Response -> "Hello Singh"

