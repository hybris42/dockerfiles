dockerfiles
===========
A bunch of dockerfiles, use Makefile to create images


calibre
-------
<pre>
$ make calibre
$ calibre/calibre
$ calibre/ebook-convert file.epub file.mobi
</pre>


chrome
-------
<pre>
$ make chrome
$ chrome/chrome
</pre>


couchpotato
-------
<pre>
$ make couchpotato
$ couchpotato/couchpotato
</pre>


devdocs
-------
<pre>
$ make devdocs
$ devdocs/devdocs
</pre>


firefox
-------
<pre>
$ make firefox
$ firefox/firefoxd
$ firefox/firefox
</pre>


headphones
-------
<pre>
$ make headphones
$ headphones/headphones
</pre>


irssi
-------
<pre>
$ make irssi # add your .irssi/config in irssi/
$ irssi/irssi
</pre>


libreoffice
-----------
<pre>
$ make libreoffice
$ libreoffice/libreoffice
</pre>


minidlna
-----
<pre>
$ make minidlna
$ minidlna/minidlna
</pre>


mtpaint
-----
<pre>
$ make mtpaint
$ mtpaint/mtpaint
</pre>


mysql
-----
<pre>
$ make mysql
$ mysql/doc-mysql-server --name site01db -p 3306:3306 -v /mnt/site01db:/var/lib/mysql
$ mysql/doc-mysql-client site01db
</pre>


rtorrent
--------
<pre>
$ make rtorrent
$ rtorrent/rtorrent
</pre>


sabnzbd
-------
<pre>
$ make sabnzbd
$ sabnzbd/sabnzbd
</pre>


sickbeard
-------
<pre>
$ make sickbeard
$ sickbeard/sickbeard
</pre>


teamviewer
----------
<pre>
$ make teamviewer
$ teamviewer/teamviewer
</pre>


test
----
<pre>
$ make test
$ test/test
</pre>


vlc
---
<pre>
$ make vlc
$ vlc/vlcd # for vlc http interface on localhost:8080
$ vlc/vlc ${relative_path_to_media_in_download_folder} # for instant playing
</pre>


xpdf
----
<pre>
$ make xpdf
$ xpdf/xpdf ${relative_path_to_pdf_in_download_or_tmp_folder}
</pre>
