dockerfiles
===========
A bunch of dockerfiles, use Makefile to create images


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


libreoffice
-----------
<pre>
$ make libreoffice
$ libreoffice/libreoffice
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
