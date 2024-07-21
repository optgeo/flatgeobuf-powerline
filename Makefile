SRC_DIR = src
SRC_FILE = optimal_bvmap-v1.pmtiles

DST_DIR = docs
DST_FILE = powerline.fgb

LAYER = PwrTrnsmL
ZOOM = 16

download: 
	curl -C - -o $(SRC_DIR)/$(SRC_FILE) https://cyberjapandata.gsi.go.jp/xyz/optimal_bvmap-v1/$(SRC_FILE)

dump:
	tippecanoe-decode -l $(LAYER) -Z $(ZOOM) $(SRC_DIR)/$(SRC_FILE) | tippecanoe-json-tool > dump.geojsons

fgb:
	ogr2ogr -of FlatGeobuf $(DST_DIR)/$(DST_FILE) dump.geojsons
