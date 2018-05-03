#!/bin/bash
./mount_drives.sh

#	-v /mnt/uatd_proces:/dades/datacloud \

docker run -it --rm -v "$PWD/of25c.map:/of25c.map" \
	-v /mnt/datacloud_2:/dades/datacloud \
	-v $PWD/dades:/dades:rw \
	--name gdal2 \
	geographica/gdal2:2.2.4 \
	/bin/bash -c /dades/index.sh 
