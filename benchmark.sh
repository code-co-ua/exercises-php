#!/bin/bash
for i in {1..50}
do
    docker run -it -d --rm --memory=15m --cpu-period=100000 --cpu-quota=2000 --network=none exercises-php:hello-world dd if=/dev/zero of=/dev/null
done

docker stats
