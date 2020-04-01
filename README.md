# DockerFirstSteps


# Spring Application Build

To build the application in CustomerServiceExample run:
```
./mvnw clean package
```

# DOCKER Build & Upload 

Build the image and give it a name, or tag:
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

Push it to the docker-hub
```
docker push f2vnvitale/customer_service_example:<x>
```

Then move to the root directory and run:
```
docker-compose up
```

Enter into the running application container with:
```
docker exec -it customer-service bash
```

Then look at the os version:
```
cat /etc/os-release
```