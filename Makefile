#qti-telephony-common.jar:

.PHONY: build
build: qti-telephony-common.jar

qti-telephony-common.jar: vendor/qti-telephony-common.jar
	mkdir -p out
	rm -f out/classes.dex
	smali --api-level 23 --output out/classes.dex smali
	cp -f vendor/qti-telephony-common.jar $@
	cd out && zip ../$@ classes.dex

.PHONY: import
import: vendor/qti-telephony-common.jar
	rm -rf smali
	rm -f vendor/classes.dex
	unzip vendor/qti-telephony-common.jar classes.dex -d vendor
	baksmali --api-level 23 --output smali vendor/classes.dex

.PHONY: clean
clean:
	rm -rf out
	rm -f qti-telephony-common.jar
	rm -f vendor/classes.dex
