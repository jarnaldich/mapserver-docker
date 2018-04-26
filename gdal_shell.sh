#!/bin/bash
./mount_drives.sh

docker run -it --rm -v "$PWD/of25c.map:/of25c.map" \
	-v /mnt/datacloud_cifs:/dades/datacloud \
	-v $PWD/dades:/data:rw \
	--name gdal2 \
	geographica/gdal2:2.2.4 \
	/bin/bash
