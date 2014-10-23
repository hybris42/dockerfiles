.PHONY: chrome devdocs firefox irssi libreoffice teamviewer test vlc xpdf all

chrome:
	docker build --no-cache=true -t hybris:chrome chrome

devdocs:
	docker build --no-cache=true -t hybris:devdocs devdocs

firefox:
	docker build --no-cache=true -t hybris:firefox firefox

irssi:
	docker build --no-cache=true -t hybris:irssi irssi

libreoffice:
	docker build --no-cache=true -t hybris:libreoffice libreoffice

sabnzbd:
	docker build --no-cache=true -t korell:sabnzbd sabnzbd

teamviewer:
	docker build --no-cache=true -t hybris:teamviewer teamviewer

test:
	docker build --no-cache=true -t hybris:test test

vlc:
	docker build --no-cache=true -t hybris:vlc vlc

xpdf:
	docker build --no-cache=true -t hybris:xpdf xpdf

all: chrome devdocs firefox irssi libreoffice test vlc xpdf
