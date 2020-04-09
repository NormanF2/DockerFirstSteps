# DockerFirstSteps
This is a small example of Microservices usage with docker and docker-compose.

---
# **Spring Application Build** #

To build the application in CustomerServiceExample run:
```
./mvnw clean package
```
----
## **DOCKER - Build, Upload and Run** ##

**Build:** Build the image and give it a name, or tag:
```
docker build -t customer_service_example .
```

Or, to ignore cached layers, use:
```
docker build --no-cache=true -t customer_service_example .
```

WARNING! The trailing dot "." is very important! Don't forget it!

Tag the image with a repo name \<username\>/\<reponame\>:\<version\>

```
docker tag customer_service_example f2vnvitale/customer_service_example:<x>
```

**Upload:** Push it to the docker-hub
```
docker push f2vnvitale/customer_service_example:<x>
```

**docker-compose run:** Then move to the root directory and run:
```
docker-compose up
```


## **Bonus - look inside a running container** ##

Enter into the running application container with:
```
docker exec -it customer-service bash
```

Then look at the os version:
```
cat /etc/os-release
```
---
# **Connection to Microservices** #

## **Phpmyadmin** ##

To visit phpmyadmin open a web browser and visit:
```
127.0.0.1:8081
```
You will see the phpmyadmin login page. Login with:
```
Username: springuser
Password: spingpassword
``` 
Now you are in the phpmyadmin management page, in the left side of the page you will see the "customer_service_db" database. Such db contains the customer table need by the CustomerServiceExample.


## **CustomerServiceExample** ##
To communicate with the service through the REST API, you will need to perform some get and post requests, so use a specific tool like Postman to perform such requests and see responses.

The CustomerServiceExample exposes the REST API on the port 4000.

**Basic request:**  
By connecting to the URL:
```
127.0.0.1:4000/
```
Or:
```
127.0.0.1:4000/demo
```
You will se an error page served by the container.

**Add customer:**  
To insert a new customer into the database, send a POST request to the URL :
```
127.0.0.1:4000/demo/add
```
With parameters those:
* name : name of the customer
* mail : email of the customer

**List customers:**  
 To see all customers, send a GET request to the URL:
```
127.0.0.1:4000/demo/list
```
You will receive a Json containing the list of Customers from the DB.