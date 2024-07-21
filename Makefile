SRC_DIR = src
SRC_FILE = optimal_bvmap-v1.pmtiles

DST_DIR = dst

download: 
	curl -o $(SRC_DIR)/$(SRC_FILE) https://cyberjapandata.gsi.go.jp/xyz/optimal_bvmap-v1/$(SRC_FILE)

