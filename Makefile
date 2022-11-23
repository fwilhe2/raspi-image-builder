build:
	docker build -t myrpi --file installer/rpi.Containerfile installer
	docker run --privileged --rm -v /dev:/dev -v /run/udev:/run/udev -v $(shell pwd)/installer:/data:Z -w /data myrpi:latest