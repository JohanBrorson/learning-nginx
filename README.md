# learning-nginx

Learning NGINX course at LinkedIn Learning.

Using Docker instead of Vagrant in the exercises.

## Build

Build the docker image

```
docker build -t learning-nginx .
```

# Run

Run container

```
docker run -p 8080:80 -it learning-nginx
```
