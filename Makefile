launch-instance:
	@ docker run -it -d \
	   --memory=15m \
	   --cpu-period=100000 \
	   --cpu-quota=2000 \
	   --network=none \
	   exercises-php:$(exercise)
build-images:
	@ bash build-images.sh
benchmark:
	@ bash benchmark.sh
