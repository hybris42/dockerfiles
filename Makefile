chrome: FORCE
	docker build --no-cache=true -t trantor:chrome chrome

couchpotato: FORCE
        docker build --no-cache=true -t korell:couchpotato couchpotato

devdocs: FORCE
	docker build --no-cache=true -t korell:devdocs devdocs

firefox: FORCE
	docker build --no-cache=true -t trantor:firefox firefox

headphones: FORCE
        docker build --no-cache=true -t korell:headphones headphones

irssi: FORCE
	docker build --no-cache=true -t trantor:irssi irssi

libreoffice: FORCE
	docker build --no-cache=true -t trantor:libreoffice libreoffice

mysql: FORCE
	docker build --no-cache=true -t korell:mysql mysql

sabnzbd: FORCE
	docker build --no-cache=true -t korell:sabnzbd sabnzbd

sickbeard: FORCE
	docker build --no-cache=true -t korell:sickbeard sickbeard

teamviewer: FORCE
	docker build --no-cache=true -t trantor:teamviewer teamviewer

test: FORCE
	docker build --no-cache=true -t trantor:test test

vlc: FORCE
	docker build --no-cache=true -t trantor:vlc vlc

xpdf: FORCE
	docker build --no-cache=true -t trantor:xpdf xpdf

FORCE:


korell: devdocs mysql sabnzbd

trantor: chrome firefox irssi libreoffice teamviewer test vlc xpdf


all: korell trantor
