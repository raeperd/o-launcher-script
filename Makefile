OUTPUT := olauncher.json

default: clean build

build:
	ruby CreateLauncherModeTemplate.rb > ${OUTPUT}

deploy: build
	mv ${OUTPUT} ~/.config/karabiner/assets/complex_modifications/${OUTPUT}

clean:
	rm -f ${OUTPUT}
