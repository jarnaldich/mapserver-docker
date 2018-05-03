#!/bin/bash

gdaltindex /dades/of25c/tileindex_full.shp /dades/datacloud/of25c_ETRS89/tif_unzip/*.tif
ogrinfo -sql 'CREATE SPATIAL INDEX ON tileindex_full' /dades/of25c/
gdaltindex /dades/of25c/tileindex_ovr.shp /dades/datacloud/of25m_ETRS89/tif_unzip/*.tif
ogrinfo -sql 'CREATE SPATIAL INDEX ON tileindex_ovr' /dades/of25c/

