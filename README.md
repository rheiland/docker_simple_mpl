# docker_simple_mpl

On a Mac, run the XQuartz applilcation and in its: Settings -> Security -> check "Allow connections from network clients"

```
docker build -t mpl-simple1 .  
IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost +
docker run --rm -it  -v /tmp/.X11-unix:/tmp/.X11-unix  -e DISPLAY=$IP:0 mpl-simple1
```

If it runs successfully, it will display a simple, straight line plot.
