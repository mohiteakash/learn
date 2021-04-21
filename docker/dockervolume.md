1. Tell advantages of `volumes` over `bind` mounts.
```
Volumes work on both Linux and Windows containers.

Volumes are easier to back up or migrate than bind mounts.

You can manage volumes using Docker CLI commands or the Docker API.

Volumes can be more safely shared among multiple containers.
```
2. Differences between `-v` and `--mount` behavior
```
-v : Consists of three fields, separated by colon characters (:). The fields must be in the correct order, and the meaning of each field is not immediately obvious.

    In the case of named volumes, the first field is the name of the volume, and is unique on a given host machine. For anonymous volumes, the first field is omitted.
    The second field is the path where the file or directory are mounted in the container.
    The third field is optional, and is a comma-separated list of options, such as ro. These options are discussed below.

--mount: Consists of multiple key-value pairs, separated by commas and each consisting of a <key>=<value> tuple. The --mount syntax is more verbose than -v or --volume, but the order of the keys is not significant, and the value of the flag is easier to understand.

    The type of the mount, which can be bind, volume, or tmpfs. This topic discusses volumes, so the type is always volume.

```
3. List existing volume

```
akash@akash-Virtual-Machine:~$ sudo docker volume ls
DRIVER              VOLUME NAME

```
4. Create volume `my-vol` , and list the volume again.

```
akash@akash-Virtual-Machine:~$ sudo docker volume create my-vol
my-vol
akash@akash-Virtual-Machine:~$ sudo docker volume ls
DRIVER              VOLUME NAME
local               my-vol
akash@akash-Virtual-Machine:~$ 

```
5. Inspect the volume `my-vol`
```
akash@akash-Virtual-Machine:~$ sudo docker volume inspect my-vol
[
    {
        "CreatedAt": "2021-04-20T13:51:55+05:30",
        "Driver": "local",
        "Labels": {},
        "Mountpoint": "/var/lib/docker/volumes/my-vol/_data",
        "Name": "my-vol",
        "Options": {},
        "Scope": "local"
    }
]

```
6. Remove volume `my-vol`
```
akash@akash-Virtual-Machine:~$ sudo docker volume rm  my-vol
my-vol
akash@akash-Virtual-Machine:~$ sudo docker volume ls
DRIVER              VOLUME NAME

```
7. Create a container `nginx1` with volume using `mount` and `-v` or `--volume`.
```
akash@akash-Virtual-Machine:~$ sudo docker run -d --name negix1 --mount source=myvol1,target=/app nginx
ab98b899aac293ac8aaa35ca3e06492665646ccc7c966fcd37ebe8ac086152dd


akash@akash-Virtual-Machine:~$ sudo docker run -d --name negix2 -v source=myvol2,target=/app nginx
502ac4e59acb0c540f5e5b85a89890d63307cf5a24f9896797a3a0d17e4e926d

```

8. Verfy that the volume is created and what is location on the host.
```
akash@akash-Virtual-Machine:~$ sudo docker inspect negix1

akash@akash-Virtual-Machine:~$ sudo docker inspect negix2
mount:-
 "Mounts": [
            {
                "Type": "volume",
                "Name": "myvol1",
                "Source": "/var/lib/docker/volumes/myvol1/_data",
                "Destination": "/app",
                "Driver": "local",
                "Mode": "z",
                "RW": true,
                "Propagation": ""
            }
        ],

-v:-
 "Mounts": [
            {
                "Type": "volume",
                "Name": "2d5a86a72401b26f400177dbed153c41539f8f46b696c0283f7d0111f548cdbb",
                "Source": "/var/lib/docker/volumes/2d5a86a72401b26f400177dbed153c41539f8f46b696c0283f7d0111f548cdbb/_data",
                "Destination": "source=myvol2,target=/app",
                "Driver": "local",
                "Mode": "",
                "RW": true,
                "Propagation": ""
            }
        ],

```
9.  Stop and remove the container `nginx1` also remove all volume created. What happens to the host folder after removing the volume.
```
akash@akash-Virtual-Machine:~$ sudo docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
502ac4e59acb        nginx               "/docker-entrypoint.…"   6 minutes ago       Up 6 minutes        80/tcp              negix2
ab98b899aac2        nginx               "/docker-entrypoint.…"   14 minutes ago      Up 14 minutes       80/tcp              negix1
89ec8ffe817b        alpine              "/bin/sh"                27 hours ago        Up 27 hours                             alpine4
b5a9f67206fe        alpine              "/bin/sh"                27 hours ago        Up 27 hours                             alpine3
416cac6f1c15        alpine              "/bin/sh"                27 hours ago        Up 27 hours                             alpine2
15fbd733ac7e        alpine              "/bin/sh"                27 hours ago        Up 27 hours                             alpine1
akash@akash-Virtual-Machine:~$ sudo docker stop  502 ab9
502
ab9
akash@akash-Virtual-Machine:~$ sudo docker rm 502 ab9
502
ab9

akash@akash-Virtual-Machine:~$ sudo docker volume rm myvol1 
[sudo] password for akash: 
myvol1

akash@akash-Virtual-Machine:~$ sudo docker volume rm  2d5a86a72401b26f400177dbed153c41539f8f46b696c0283f7d0111f548cdbb

2d5a86a72401b26f400177dbed153c41539f8f46b696c0283f7d0111f548cdbb


host folder removed automatically after stop and remove container and volume 

```
10. How to mount a readonly volume i.e. the container could not change the content of the mounted volume.
```
akash@akash-Virtual-Machine:~$ sudo docker run -d --name redis1 --mount source=redisvol,target=/app,readonly redis
Unable to find image 'redis:latest' locally
latest: Pulling from library/redis
f7ec5a41d630: Pull complete 
a36224ca8bbd: Pull complete 
7630ad34dcb2: Pull complete 
dd0ea236b03b: Pull complete 
ed6ed4f2f5a6: Pull complete 
8788804112c6: Pull complete 
Digest: sha256:08e282682a708eb7f51b473516be222fff0251cdee5ef8f99f4441a795c335b6
Status: Downloaded newer image for redis:latest
668efe2e42a528b922d1cdfbdaa55e98fa4e62ff6bdea87a28475ef05b3d704e



akash@akash-Virtual-Machine:~$ sudo docker inspect redis1
"Mounts": [
            {
                "Type": "volume",
                "Name": "redisvol",
                "Source": "/var/lib/docker/volumes/redisvol/_data",
                "Destination": "/app",
                "Driver": "local",
                "Mode": "z",
                "RW": false,
                "Propagation": ""
            },
            {
                "Type": "volume",
                "Name": "6a3a788c9f28c9386d9d53e6cd6d01c46054941bca5ad9a39ae44ad1dd56bcba",
                "Source": "/var/lib/docker/volumes/6a3a788c9f28c9386d9d53e6cd6d01c46054941bca5ad9a39ae44ad1dd56bcba/_data",
                "Destination": "/data",
                "Driver": "local",
                "Mode": "",
                "RW": true,
                "Propagation": ""
            }
        ],

```

11. Stop and remove the container, and remove the volume. 
```
akash@akash-Virtual-Machine:~$ sudo docker container stop 668
668
akash@akash-Virtual-Machine:~$ sudo docker container rm 668
668
akash@akash-Virtual-Machine:~$ sudo docker volume rm redisvol
redisvol

```
12. Differnece between "Bind Mounting a Volume" and creating independent "volume" ?

```
Bind mounts have limited functionality compared to volumes. When you use a bind mount, a file or directory on the host machine is mounted into a container. 

 when you use a volume, a new directory is created within Docker's storage directory on the host machine, and Docker manages that directory's contents.
```
14. Create the volume `nginx-vol` and then create a container `nginx2` using the volume `nginx-vol`. Use `-it` to connect to container and `-rm` so that the container get removed on exit. 

```
kash@akash-Virtual-Machine:~$ sudo docker volume create nginx-vol
nginx-vol
akash@akash-Virtual-Machine:~$ sudo docker volume ls
DRIVER              VOLUME NAME
local               51865b36ece307919999c93249f7d595b34880d3138b6cb35031b8274264e2fc
local               nginx-vol

sudo docker run -it --rm --name nginx2 -v nginx-vol:/nginx-vol1 nginx
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
/#
/#exit
```
15. Now create a container `nginx3` using the volume `nginx-vol`. Use `-it` to connect to container and `-rm` so that the container get removed on exit.

```
sudo docker run -it --rm --name nginx3 -v nginx-vol:/nginx-vol1 nginx
/docker-entrypoint.sh: /docker-entrypoint.d/ is not empty, will attempt to perform configuration
/docker-entrypoint.sh: Looking for shell scripts in /docker-entrypoint.d/
/docker-entrypoint.sh: Launching /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh
10-listen-on-ipv6-by-default.sh: info: Getting the checksum of /etc/nginx/conf.d/default.conf
10-listen-on-ipv6-by-default.sh: info: Enabled listen on IPv6 in /etc/nginx/conf.d/default.conf
/docker-entrypoint.sh: Launching /docker-entrypoint.d/20-envsubst-on-templates.sh
/docker-entrypoint.sh: Launching /docker-entrypoint.d/30-tune-worker-processes.sh
/docker-entrypoint.sh: Configuration complete; ready for start up
/#
/#exit

```

16. Create a volume at the same time as the container, delete the container, then attach the volume to a new container and verify if volume is created:

```
sudo docker run -d --name devtest -v myvol2:/app nginx
[sudo] password for akash: 
823814cf9aaf0fa336f21ddacc3692940af52a4fc23186d7aff896ee70b6392b
akash@akash-Virtual-Machine:~$ sudo docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
823814cf9aaf        nginx               "/docker-entrypoint.…"   2 minutes ago       Up 2 minutes        80/tcp              devtest

kash@akash-Virtual-Machine:~$ sudo docker volume ls
DRIVER              VOLUME NAME
local               51865b36ece307919999c93249f7d595b34880d3138b6cb35031b8274264e2fc
local               myvol2
local               nginx-vol
akash@akash-Virtual-Machine:~$ sudo docker stop 823
823
akash@akash-Virtual-Machine:~$ sudo docker rm 823
823
akash@akash-Virtual-Machine:~$ sudo docker run -d --name devtest1 -v myvol2:/app nginx
2e90b5282af7c6a0307c29965bf886d776e8214b9545a44cfd41b263b889bfd6

or
akash@akash-Virtual-Machine:~$ sudo docker run -it --name devtest1 -v myvol2:/MyVol2 nginx
akash@akash-Virtual-Machine:~$ sudo docker volume ls
DRIVER              VOLUME NAME
local               51865b36ece307919999c93249f7d595b34880d3138b6cb35031b8274264e2fc
local               myvol2
local               nginx-vol
akash@akash-Virtual-Machine:~$ sudo docker inspect devtest1
 "Mounts": [
            {
                "Type": "volume",
                "Name": "myvol2",
                "Source": "/var/lib/docker/volumes/myvol2/_data",
                "Destination": "/app",
                "Driver": "local",
                "Mode": "z",
                "RW": true,
                "Propagation": ""
            }
        ],

```
17. Write some data to the volume and verify that the volume has mounted and your data is still in place.
```
we add a txt file in volume after adding inspect the container we found volume is mounted
akash@akash-Virtual-Machine:~$ sudo docker inspect devtest1
"Mounts": [
            {
                "Type": "volume",
                "Name": "myvol2",
                "Source": "/var/lib/docker/volumes/myvol2/_data",
                "Destination": "/app",
                "Driver": "local",
                "Mode": "z",
                "RW": true,
                "Propagation": ""
            }
        ],


```

18. Remove the volume `nginx-vol2` and check if container can remove or not. If not state the reason why it can not be remove?
```
we can not remove nginx-vol2 volume because they are use with container 
```

19. Remove the container by using this ID and check if your volume `nginx-vol2` is still present or not after removing the container.

```
after removing the container volume nginx-vol2 is still present
```



20. What is the command to remove volume?

```
sudo docker volume rm [volumename]

sudo docker volume rm -f [volumename]

sudo docker volume rm --force [volumename]

```
21. Create a volume at the same time that you create a container and provide the path to a directory that contains data in the base image. and explain the output.

```
akash@akash-Virtual-Machine:~$ sudo docker run -d --name mynginx1 -v vol-data1:/var nginx
[sudo] password for akash: 
84e0ca3225dc87ec24e6272807c137bdd2b70c240817fad316bee68b6039d2af

akash@akash-Virtual-Machine:~$ sudo docker run -v datavolume:/Datavolume nginx ls Datavolume
backups
cache
lib
local
lock
log
mail
opt
run
spool
tmp


```
22. Create new container using volume `vol-data1` and verify if the content of `/var` is present in `vol-data1`.
```
sudo docker run -d --name mynginx1 -v vol-data1:/var nginx
[sudo] password for akash: 
84e0ca3225dc87ec24e6272807c137bdd2b70c240817fad316bee68b6039d2af

akash@akash-Virtual-Machine:~$ sudo docker volume ls
DRIVER              VOLUME NAME
local               84e0ca3225dc87ec24e6272807c137bdd2b70c240817fad316bee68b6039d2af
local               nginx-vol
local               vol-data1
akash@akash-Virtual-Machine:~$ sudo docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
677d3a31927c        nginx               "/docker-entrypoint.…"   9 minutes ago       Up 9 minutes        80/tcp              mynginx


all the content from the base images /var directory is copied into the volume

```