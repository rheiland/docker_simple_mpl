# docker_simple_mpl

On a Mac, run the XQuartz applilcation and in its: Settings -> Security -> check "Allow connections from network clients"

```
docker build -t mpl-simple1 .  
IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost +
docker run --rm -it  -v /tmp/.X11-unix:/tmp/.X11-unix  -e DISPLAY=$IP:0 mpl-simple1

# On Ubuntu, you could try to explicitly provide your IP address since "ifconfig" and "en0" may not be available.
$ hostname -I
149.160.178.216 172.17.0.1
$ sudo docker run --rm -it  -v /tmp/.X11-unix:/tmp/.X11-unix  -e DISPLAY=149.160.178.216:0 mpl-simple1
```

If it runs successfully, it will display a simple, straight line plot.
