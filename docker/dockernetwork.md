REFERENCE BY
```
https://dev.to/ajeetht/what-is-docker-networking-and-bridge-networking-11gc

```
1.List and describe different Network driver available in Docker?
```


    bridge: The default network driver. If you don’t specify a driver, this is the type of network you are creating. Bridge networks are usually used when your applications run in standalone containers that need to communicate. 

    host: For standalone containers, remove network isolation between the container and the Docker host, and use the host’s networking directly. 

    overlay: Overlay networks connect multiple Docker daemons together and enable swarm services to communicate with each other. You can also use overlay networks to facilitate communication between a swarm service and a standalone container, or between two standalone containers on different Docker daemons. This strategy removes the need to do OS-level routing between these containers. 

    macvlan: Macvlan networks allow you to assign a MAC address to a container, making it appear as a physical device on your network. The Docker daemon routes traffic to containers by their MAC addresses. Using the macvlan driver is sometimes the best choice when dealing with legacy applications that expect to be directly connected to the physical network, rather than routed through the Docker host’s network stack.

    none: For this container, disable all networking. Usually used in conjunction with a custom network driver. none is not available for swarm services. 

    Network plugins: You can install and use third-party network plugins with Docker. These plugins are available from Docker Hub or from third-party vendors. See the vendor’s documentation for installing and using a given network plugin.

```

2. Create 2 different alpine container alpine1 and alpine2.

```
Ans:-akash@akash-Virtual-Machine:~$ sudo docker run -dit --name alpine1 alpine
150e9effa8d6bbfb82a8e6fe4689901b99aa11b75a1f693075f2902b050e88c6
akash@akash-Virtual-Machine:~$ sudo docker run -dit --name alpine2 alpine
1ee5d25789668b8a049c7ecb0d55d6982c5eeba0c66838db83cfa845fe8079e1
akash@akash-Virtual-Machine:~$ sudo docker ps

CONTAINER ID        IMAGE               COMMAND             CREATED              STATUS              PORTS               NAMES
1ee5d2578966        alpine              "/bin/sh"           About a minute ago   Up About a minute                       alpine2
150e9effa8d6        alpine              "/bin/sh"           2 minutes ago        Up 2 minutes                            alpine1

```

3. Find, to which network driver they(alpine1 and alpine2) are connected.
```
akash@akash-Virtual-Machine:~$ sudo docker network inspect bridge
[sudo] password for akash: 
[
    {
        "Name": "bridge",
        "Id": "0b27b3d9ad059ef1de10594d421dc4b0639796b48ebc9517f1e1c2476018f4eb",
        "Created": "2021-04-06T09:25:09.338311+05:30",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.17.0.0/16",
                    "Gateway": "172.17.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "150e9effa8d6bbfb82a8e6fe4689901b99aa11b75a1f693075f2902b050e88c6": {
                "Name": "alpine1",
                "EndpointID": "484db8bda1cd13c559fcf093a32d786837de150b74c5a616712c51dcecb6b15f",
                "MacAddress": "02:42:ac:11:00:02",
                "IPv4Address": "172.17.0.2/16",
                "IPv6Address": ""
            },
            "1ee5d25789668b8a049c7ecb0d55d6982c5eeba0c66838db83cfa845fe8079e1": {
                "Name": "alpine2",
                "EndpointID": "d767fa79a64fafe676a4d2b7577b7580f18ec37242a1046468cb46bb72b3400f",
                "MacAddress": "02:42:ac:11:00:03",
                "IPv4Address": "172.17.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {
            "com.docker.network.bridge.default_bridge": "true",
            "com.docker.network.bridge.enable_icc": "true",
            "com.docker.network.bridge.enable_ip_masquerade": "true",
            "com.docker.network.bridge.host_binding_ipv4": "0.0.0.0",
            "com.docker.network.bridge.name": "docker0",
            "com.docker.network.driver.mtu": "1500"
        },
        "Labels": {}
    }
]
```


4. Attach to `alpine1`

5. ping `alpine2` using the IP you see in after #3. 
6. ping the `alpine2` using container name.
```
akash@akash-Virtual-Machine:~$ sudo docker attach alpine1

/ # ping -c 2 172.17.0.3
PING 172.17.0.3 (172.17.0.3): 56 data bytes
64 bytes from 172.17.0.3: seq=0 ttl=64 time=0.143 ms
64 bytes from 172.17.0.3: seq=1 ttl=64 time=0.124 ms

--- 172.17.0.3 ping statistics ---
2 packets transmitted, 2 packets received, 0% packet loss
round-trip min/avg/max = 0.124/0.133/0.143 ms
/ # ping -c 2 alpine2
ping: bad address 'alpine2'
```
7. Detach from `alpine1`, Find key combination used to detach from a container without stopping.
```
Detach from alpine1 without stoping it by using the detach sequence
CTRL + p followed by q
```
8. Stop and remove both container.
```
akash@akash-Virtual-Machine:~$ sudo docker container stop alpine1 alpine2
[sudo] password for akash: 
Sorry, try again.
[sudo] password for akash: 
alpine1
alpine2
akash@akash-Virtual-Machine:~$ sudo docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS                        PORTS               NAMES
1ee5d2578966        alpine              "/bin/sh"           About an hour ago   Exited (137) 18 seconds ago                       alpine2
150e9effa8d6        alpine              "/bin/sh"           About an hour ago   Exited (137) 18 seconds ago                       alpine1
akash@akash-Virtual-Machine:~$ sudo docker container rm alpine1 alpine2
alpine1
alpine2
akash@akash-Virtual-Machine:~$ sudo docker ps -a
CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES

```
9. Create a user-defined network named `alpine-net`.
```
akash@akash-Virtual-Machine:~$ sudo docker network create --driver bridge alpine-net
6087a1d46683d28f6973ea773bf5442157186fec178c100d3402ded62a584e82
akash@akash-Virtual-Machine:~$ sudo docker network ls
NETWORK ID          NAME                DRIVER              SCOPE
6087a1d46683        alpine-net          bridge              local
0b27b3d9ad05        bridge              bridge              local
cd6c3849770f        host                host                local
be484a829458        none                null                local
akash@akash-Virtual-Machine:~$ 

```

10. Create 4 container `alpine1`, `alpine2`, `alpine3`, `alpine4`. While create attach `alpine1` ,`alpine3` to `alpine-net` and attach `alpine2` and `alpine4` to default `bridge` network.
```
akash@akash-Virtual-Machine:~$ sudo docker run -dit --name alpine1 --network alpine-net alpine
15fbd733ac7e850e25d3eb65ca9b33299e0cf45d1899be834388f0fe5b43f7f9
akash@akash-Virtual-Machine:~$ sudo docker run -dit --name alpine2 alpine
416cac6f1c15c400c0d59e6e9edbc3fb7271db981d90c7af21f133a81823a05b
akash@akash-Virtual-Machine:~$ sudo docker run -dit --name alpine3 --network alpine-net alpine
b5a9f67206feb492b98421c20d1088f59c78c5502a5a747c740408e449c92c40
akash@akash-Virtual-Machine:~$ sudo docker run -dit --name alpine4 alpine
89ec8ffe817b88e1b60a0d782f16e07d9c899c393de09ce994e153b4d1b54deb
akash@akash-Virtual-Machine:~$ 

```

11. Verify that all you container are attached to respective network.
```
akash@akash-Virtual-Machine:~$ sudo docker network inspect alpine-net
[
    {
        "Name": "alpine-net",
        "Id": "6087a1d46683d28f6973ea773bf5442157186fec178c100d3402ded62a584e82",
        "Created": "2021-04-17T15:45:29.540486957+05:30",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "15fbd733ac7e850e25d3eb65ca9b33299e0cf45d1899be834388f0fe5b43f7f9": {
                "Name": "alpine1",
                "EndpointID": "e7cc6e41882c0ed55b7d805afbcb213d782c2b5fbe03abdf0ce8ca7d66723c43",
                "MacAddress": "02:42:ac:12:00:02",
                "IPv4Address": "172.18.0.2/16",
                "IPv6Address": ""
            },
            "b5a9f67206feb492b98421c20d1088f59c78c5502a5a747c740408e449c92c40": {
                "Name": "alpine3",
                "EndpointID": "22476a4ff77622249356f8d1c23e27789c067cd7fca9f00cadde763708e110f7",
                "MacAddress": "02:42:ac:12:00:03",
                "IPv4Address": "172.18.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]



akash@akash-Virtual-Machine:~$ sudo docker network inspect bridge
[
    {
        "Name": "bridge",
        "Id": "0b27b3d9ad059ef1de10594d421dc4b0639796b48ebc9517f1e1c2476018f4eb",
        "Created": "2021-04-06T09:25:09.338311+05:30",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.17.0.0/16",
                    "Gateway": "172.17.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "416cac6f1c15c400c0d59e6e9edbc3fb7271db981d90c7af21f133a81823a05b": {
                "Name": "alpine2",
                "EndpointID": "b0502e5a3042cef6ad02333bf9cb57dad6921419c99b2a4b0320776e4d8387ba",
                "MacAddress": "02:42:ac:11:00:02",
                "IPv4Address": "172.17.0.2/16",
                "IPv6Address": ""
            },
            "89ec8ffe817b88e1b60a0d782f16e07d9c899c393de09ce994e153b4d1b54deb": {
                "Name": "alpine4",
                "EndpointID": "5d13aee55bd80253844a4a2f100e1838173873328210e2253657e9e58c2bcafe",
                "MacAddress": "02:42:ac:11:00:03",
                "IPv4Address": "172.17.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {
            "com.docker.network.bridge.default_bridge": "true",
            "com.docker.network.bridge.enable_icc": "true",
            "com.docker.network.bridge.enable_ip_masquerade": "true",
            "com.docker.network.bridge.host_binding_ipv4": "0.0.0.0",
            "com.docker.network.bridge.name": "docker0",
            "com.docker.network.driver.mtu": "1500"
        },
        "Labels": {}
    }
]

```



12. Attach to container `alpine1`.

13. While your are attached to `alpine1` ping to all other container using their IP and container name.
```
kash@akash-Virtual-Machine:~$ sudo docker attach alpine1
/ # ping -c 2 172.17.0.2
PING 172.17.0.2 (172.17.0.2): 56 data bytes

--- 172.17.0.2 ping statistics ---
2 packets transmitted, 0 packets received, 100% packet loss
/ # ping -c 2 alpine2
ping: bad address 'alpine2'
/ # ping -c 2 172.18.0.3
PING 172.18.0.3 (172.18.0.3): 56 data bytes
64 bytes from 172.18.0.3: seq=0 ttl=64 time=0.089 ms
64 bytes from 172.18.0.3: seq=1 ttl=64 time=0.137 ms

--- 172.18.0.3 ping statistics ---
2 packets transmitted, 2 packets received, 0% packet loss
round-trip min/avg/max = 0.089/0.113/0.137 ms
/ # ping -c 2 alpine3
PING alpine3 (172.18.0.3): 56 data bytes
64 bytes from 172.18.0.3: seq=0 ttl=64 time=0.068 ms
64 bytes from 172.18.0.3: seq=1 ttl=64 time=0.141 ms

--- alpine3 ping statistics ---
2 packets transmitted, 2 packets received, 0% packet loss
round-trip min/avg/max = 0.068/0.104/0.141 ms
/ # ping -c 2 172.17.0.3
PING 172.17.0.3 (172.17.0.3): 56 data bytes

--- 172.17.0.3 ping statistics ---
2 packets transmitted, 0 packets received, 100% packet loss
/ # ping -c 2 alpine4
ping: bad address 'alpine4'
/ # 

```

14. Which container you cannot ping by container name and why?
```
alpine2 and alpine4 are can not ping by  name because they are connected to bridge network.
 they can not ping by name because they are connected to default bridge network.defalut bridge network only ping by IP
```
15. Detach from `alpine1` and attach to `alpine2`, ping to all other container using their IP and container name.
```
akash@akash-Virtual-Machine:~$ sudo docker attach alpine2
[sudo] password for akash: 
/ # ping -c 2 172.18.0.2
PING 172.18.0.2 (172.18.0.2): 56 data bytes

--- 172.18.0.2 ping statistics ---
2 packets transmitted, 0 packets received, 100% packet loss
/ # ping -c 2 alpine1
ping: bad address 'alpine1'
/ # ping -c 2 172.18.0.3
PING 172.18.0.3 (172.18.0.3): 56 data bytes

--- 172.18.0.3 ping statistics ---
2 packets transmitted, 0 packets received, 100% packet loss
/ # ping -c 2 alpine3
ping: bad address 'alpine3'
/ # ping -c 2 172.17.0.3
PING 172.17.0.3 (172.17.0.3): 56 data bytes
64 bytes from 172.17.0.3: seq=0 ttl=64 time=0.130 ms
64 bytes from 172.17.0.3: seq=1 ttl=64 time=0.159 ms

--- 172.17.0.3 ping statistics ---
2 packets transmitted, 2 packets received, 0% packet loss
round-trip min/avg/max = 0.130/0.144/0.159 ms
/ # ping -c 2 alpine4
ping: bad address 'alpine4'
/ # ping -c 2 alpine4
ping: bad address 'alpine4'
/ # 

```
16. Which container you cannot ping by IP or by name and why? 
```
alpine1 and alpine3 are can not ping by IP and name because they are connected to alpine-net network.
also alpine4 are can not ping by name because they are connected to default bridge network.defalut bridge network only ping by IP
```
17. Attach your container `alpine2` to `alpine-net`. Check that its attached to both network `bridge` and `alpine-net`.
```
akash@akash-Virtual-Machine:~$ sudo docker network connect alpine-net alpine2
akash@akash-Virtual-Machine:~$ sudo docker network inspect alpine-net
[
    {
        "Name": "alpine-net",
        "Id": "6087a1d46683d28f6973ea773bf5442157186fec178c100d3402ded62a584e82",
        "Created": "2021-04-17T15:45:29.540486957+05:30",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": {},
            "Config": [
                {
                    "Subnet": "172.18.0.0/16",
                    "Gateway": "172.18.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "15fbd733ac7e850e25d3eb65ca9b33299e0cf45d1899be834388f0fe5b43f7f9": {
                "Name": "alpine1",
                "EndpointID": "e7cc6e41882c0ed55b7d805afbcb213d782c2b5fbe03abdf0ce8ca7d66723c43",
                "MacAddress": "02:42:ac:12:00:02",
                "IPv4Address": "172.18.0.2/16",
                "IPv6Address": ""
            },
            "416cac6f1c15c400c0d59e6e9edbc3fb7271db981d90c7af21f133a81823a05b": {
                "Name": "alpine2",
                "EndpointID": "f99607c1b5bab4c93f1ec21c94dff423382e739d8cd82cd35eb1d060c0b5abaf",
                "MacAddress": "02:42:ac:12:00:04",
                "IPv4Address": "172.18.0.4/16",
                "IPv6Address": ""
            },
            "b5a9f67206feb492b98421c20d1088f59c78c5502a5a747c740408e449c92c40": {
                "Name": "alpine3",
                "EndpointID": "22476a4ff77622249356f8d1c23e27789c067cd7fca9f00cadde763708e110f7",
                "MacAddress": "02:42:ac:12:00:03",
                "IPv4Address": "172.18.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {},
        "Labels": {}
    }
]
akash@akash-Virtual-Machine:~$ sudo docker network inspect bridge
[
    {
        "Name": "bridge",
        "Id": "0b27b3d9ad059ef1de10594d421dc4b0639796b48ebc9517f1e1c2476018f4eb",
        "Created": "2021-04-06T09:25:09.338311+05:30",
        "Scope": "local",
        "Driver": "bridge",
        "EnableIPv6": false,
        "IPAM": {
            "Driver": "default",
            "Options": null,
            "Config": [
                {
                    "Subnet": "172.17.0.0/16",
                    "Gateway": "172.17.0.1"
                }
            ]
        },
        "Internal": false,
        "Attachable": false,
        "Ingress": false,
        "ConfigFrom": {
            "Network": ""
        },
        "ConfigOnly": false,
        "Containers": {
            "416cac6f1c15c400c0d59e6e9edbc3fb7271db981d90c7af21f133a81823a05b": {
                "Name": "alpine2",
                "EndpointID": "b0502e5a3042cef6ad02333bf9cb57dad6921419c99b2a4b0320776e4d8387ba",
                "MacAddress": "02:42:ac:11:00:02",
                "IPv4Address": "172.17.0.2/16",
                "IPv6Address": ""
            },
            "89ec8ffe817b88e1b60a0d782f16e07d9c899c393de09ce994e153b4d1b54deb": {
                "Name": "alpine4",
                "EndpointID": "5d13aee55bd80253844a4a2f100e1838173873328210e2253657e9e58c2bcafe",
                "MacAddress": "02:42:ac:11:00:03",
                "IPv4Address": "172.17.0.3/16",
                "IPv6Address": ""
            }
        },
        "Options": {
            "com.docker.network.bridge.default_bridge": "true",
            "com.docker.network.bridge.enable_icc": "true",
            "com.docker.network.bridge.enable_ip_masquerade": "true",
            "com.docker.network.bridge.host_binding_ipv4": "0.0.0.0",
            "com.docker.network.bridge.name": "docker0",
            "com.docker.network.driver.mtu": "1500"
        },
        "Labels": {}
    }
]

```
18. Which container you cannot ping by IP or by name and why?

```
alpine4 container can not ping by name because they are attached to bridge network. Bridge network is default network it should not be able to to reach all of the container by container name.they able to reach all of container by only container IP.
```
19. While you are attached to `alpine2` ping to internet for ex. google.com. Detach from `alpine2` and do the same for all container.
```
akash@akash-Virtual-Machine:~$ sudo docker attach alpine2
[sudo] password for akash: 
/ # ping google.com
PING google.com (142.250.76.174): 56 data bytes
64 bytes from 142.250.76.174: seq=0 ttl=115 time=25.709 ms
64 bytes from 142.250.76.174: seq=1 ttl=115 time=25.693 ms
64 bytes from 142.250.76.174: seq=2 ttl=115 time=25.705 ms
64 bytes from 142.250.76.174: seq=3 ttl=115 time=25.581 ms
64 bytes from 142.250.76.174: seq=4 ttl=115 time=25.734 ms
64 bytes from 142.250.76.174: seq=5 ttl=115 time=39.950 ms
^Z[1]+  Stopped                    ping google.com
/ # read escape sequence
akash@akash-Virtual-Machine:~$ sudo docker attach alpine1
/ # ping google.com
PING google.com (142.250.76.174): 56 data bytes
64 bytes from 142.250.76.174: seq=0 ttl=115 time=433.359 ms
64 bytes from 142.250.76.174: seq=1 ttl=115 time=25.514 ms
64 bytes from 142.250.76.174: seq=2 ttl=115 time=25.155 ms
64 bytes from 142.250.76.174: seq=3 ttl=115 time=76.434 ms
^Z[2]+  Stopped                    ping google.com
/ # read escape sequence
akash@akash-Virtual-Machine:~$ sudo docker attach alpine3
/ # ping google.com
PING google.com (142.250.76.174): 56 data bytes
64 bytes from 142.250.76.174: seq=0 ttl=115 time=26.860 ms
64 bytes from 142.250.76.174: seq=1 ttl=115 time=25.286 ms
64 bytes from 142.250.76.174: seq=2 ttl=115 time=265.687 ms
64 bytes from 142.250.76.174: seq=3 ttl=115 time=243.431 ms
64 bytes from 142.250.76.174: seq=4 ttl=115 time=350.121 ms
^Z[1]+  Stopped                    ping google.com
/ # read escape sequence
akash@akash-Virtual-Machine:~$ sudo docker attach alpine4
/ # ping google.com
PING google.com (142.250.76.174): 56 data bytes
64 bytes from 142.250.76.174: seq=0 ttl=115 time=26.540 ms
64 bytes from 142.250.76.174: seq=1 ttl=115 time=41.424 ms
64 bytes from 142.250.76.174: seq=2 ttl=115 time=30.283 ms
64 bytes from 142.250.76.174: seq=3 ttl=115 time=29.037 ms
^Z[1]+  Stopped                    ping google.com
/ # 

```