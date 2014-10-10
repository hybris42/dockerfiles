.PHONY: devdocs firefox libreoffice teamviewer test vlc xpdf all

devdocs:
	docker build --no-cache=true -t hybris:devdocs devdocs

firefox:
	docker build --no-cache=true -t hybris:firefox firefox

libreoffice:
	docker build --no-cache=true -t hybris:libreoffice libreoffice

teamviewer:
	docker build --no-cache=true -t hybris:teamviewer teamviewer

test:
	docker build --no-cache=true -t hybris:test test

vlc:
	docker build --no-cache=true -t hybris:vlc vlc

xpdf:
	docker build --no-cache=true -t hybris:xpdf xpdf

all: devdocs firefox libreoffice test vlc xpdf
