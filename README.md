# Static HTML "Hello world"

## Prepare your app
Put all the code in the `dist` folder
### Start the container for development
docker run --name hello-static -p 8080:3000 -v dist:/usr/share/nginx/html:ro -d wicastr/nginx:latest
```
$ docker ps
CONTAINER ID        IMAGE                 COMMAND             CREATED             STATUS              PORTS                    NAMES
5df7d2377e5c        wicastr/nginx:latest   "nginx -g ..."        1 minute ago         Up 1 minute          0.0.0.0:8080->80/tcp   hello-static
```
Go to [localhost:8080](http://localhost:8080) on your browser

## Build
Once your app is ready
Stop the development container and build
`docker stop hello-static`
`docker build -t <your username>/hello-static .`
```
$ docker images
REPOSITORY                      TAG        ID              CREATED
<your username>/hello-static    latest     d64d3505b0d2    1 minute ago
```

## Test
`docker run -p 8080:80 -d <your username>/hello-static`

```
$ docker ps
ID            IMAGE                                COMMAND    ...   PORTS
ecce33b30ebf  <your username>/hello-static  nginx -g ...   8080->80
```
Go to [localhost:8080](http://localhost:8080) on your browser

## Publish
### Tag the image for WICASTR's registry
`docker tag hub.wicastr.net/<your username>/hello-static`
### Push the image to the registry
`docker push hub.wicastr.net/<your username>/hello-static`
