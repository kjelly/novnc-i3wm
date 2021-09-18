#!/bin/bash
docker rm -f ubuntu
docker run -p 5901:5901 -d -v /dev/shm:/dev/shm -v $HOME/nfs/:/home/dockerUser/nfs/ -v $HOME/.config/nvim/:/home/dockerUser/.config/nvim/ -v $HOME/.fzf:/home/dockerUser/.fzf -v $HOME/.fonts/:/home/dockerUser/.fonts/ --name ubuntu --privileged --device=/dev/net/tun --cap-add=NET_ADMIN \
 novnc-i3wm
