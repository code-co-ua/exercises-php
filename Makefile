launch-instance:
	@ docker run -it -d exercises-php:$(exercise)
build-images:
	@ bash build-images.sh
