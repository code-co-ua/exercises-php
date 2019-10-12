launch-instance:
	@ docker run -it -d --memory=15m --cpus=".05" exercises-php:$(exercise)
build-images:
	@ bash build-images.sh
