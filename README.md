# DockerFirstSteps


# Spring Application Build

Run
```
./mvnw clean package
```

# DOCKER Build & Upload 

Build the image and give it a name, or tag.

```
docker build -t customer_service_example .
```
Or with
```
docker build --no-cache=true -t customer_service_example .
```

WARNING! The trailing dot "." is very important! Don't forget it!

Tag the image with a repo name \<username\>/\<reponame\>:\<version\>

```
docker tag customer_service_example f2vnvitale/customer_service_example:0.1
```

Push it to the docker-hub
```
docker push f2vnvitale/customer_service_example:0.1

```

Then move to the root directory and run:
```
docker-compose up
```

Enter the application container with 
```
docker exec -it customer-service bash
```

Then look at the os version:
```
cat /etc/os-release
```