.DEFAULT_GOAL := all

PNG_DIR := png
SRC_DIR := sources
RESOLUTION := $(shell xrandr | awk '/\*/ {print $$1; exit}')

JPGS := $(wildcard $(SRC_DIR)/*.jpeg)
PNGS := $(patsubst $(SRC_DIR)/%.jpeg,$(PNG_DIR)/%.png,$(JPGS))

.PHONY: all
all: download $(PNGS)

.PHONY: download
download:
	./randpaper/randpaper.py -p $(SRC_DIR) -n 10

$(PNG_DIR)/%.png: $(SRC_DIR)/%-fg.png $(SRC_DIR)/%-bg.png
	composite -gravity center $^ $@

$(SRC_DIR)/%-fg.png: $(SRC_DIR)/%.jpeg
	convert $< -resize $(RESOLUTION) $@

$(SRC_DIR)/%-bg.png: $(SRC_DIR)/%.jpeg
	convert $< -resize $(RESOLUTION)^ -gravity center -extent $(RESOLUTION) -blur 0x30 $@
