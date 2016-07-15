## To run


	docker run -ti --rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/home/developer/.Xauthority --net=host --pid=host --ipc=host firefox



## Random Docker command

	curl -fsSL https://get.docker.com/ | sh


	docker build -t test1 .


	docker images

	docker ps
	docker ps -a

	docker tag 21f40053e446 xxxx/testing:latest


	docker login --username=xxxx --email=xxxxx@gmail.com


	docker push codeyash/testing

	docker rmi -f


	docker run  -ti --rm \
	       -e DISPLAY=$DISPLAY \
	       -v /tmp/.X11-unix:/tmp/.X11-unix \
	       testing


	docker run -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $HOME/.Xauthority:/home/developer/.Xauthority --net=host test1

	docker run -e DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority --net=host test1

