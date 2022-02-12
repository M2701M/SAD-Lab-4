# SAD-Lab-4

This docker container creates a django server with a hello world webpage.

## Usage

To build the container, go inside the cloned repo (where the Dockerfile resides) and do this:
```
docker build . -t django:v1
```

To run the container, do this:
```
docker run -d -p 8000:8000 -it django:v1 python3 manage.py runserver 0.0.0.0:8000
```
