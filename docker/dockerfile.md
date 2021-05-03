kash@akash-Virtual-Machine:~/nginx-website$ cat Dockerfile
#getting base image from nginx

FROM nginx

RUN apt-get update

CMD ["echo", "Hello world...!"]

kash@akash-Virtual-Machine:~/nginx-website$ sudo docker build -t myimage:1.0 .
Sending build context to Docker daemon  5.632kB
Step 1/3 : FROM nginx
 ---> 7ce4f91ef623
Step 2/3 : RUN apt-get update
 ---> Running in 9a938923f785
Get:1 http://security.debian.org/debian-security buster/updates InRelease [65.4 kB]
Get:2 http://deb.debian.org/debian buster InRelease [121 kB]
Get:3 http://deb.debian.org/debian buster-updates InRelease [51.9 kB]
Get:4 http://deb.debian.org/debian buster/main amd64 Packages [7907 kB]
Get:5 http://security.debian.org/debian-security buster/updates/main amd64 Packages [284 kB]
Get:6 http://deb.debian.org/debian buster-updates/main amd64 Packages [10.9 kB]
Fetched 8441 kB in 37s (230 kB/s)
Reading package lists...
Removing intermediate container 9a938923f785
 ---> 60888c72a958
Step 3/3 : CMD ["echo", "Hello world...!"]
 ---> Running in 1068a2ece995
Removing intermediate container 1068a2ece995
 ---> ec71ea887620
Successfully built ec71ea887620
Successfully tagged myimage:1.0


akash@akash-Virtual-Machine:~/nginx-website$ sudo docker images
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
myimage             1.0                 ec71ea887620        2 minutes ago       151MB
alpine              latest              6dbb9cc54074        11 days ago         5.61MB
redis               latest              de974760ddb2        2 weeks ago         105MB
nginx               latest              7ce4f91ef623        3 weeks ago         133MB
akash@akash-Virtual-Machine:~/nginx-website$ sudo docker run ec7
Hello world...!
