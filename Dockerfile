---
FROM ubuntu:18.04

RUN mkdir -p /home/app-user/tmp/pids

WORKDIR /home/app-user

# Example Directory:
#├── Dockerfile
#├── README.md
#├── pipeline.yml
#├── test
#│   └── test
#├── test1
#└── test2

COPY . /home/app-user
# Following line fails because the previous '.' already had the ./test directory, and the rename explodes
COPY ./test test
COPY ./test1 /test1
COPY ./test2 /test2
