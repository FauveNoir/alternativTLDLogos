image: */*.svg
	for f in ./tld-general/*.svg ./ccTLD/*.svg ; do ls $$f ; inkscape --export-png=`echo $${f} | sed -e 's/\.svg$$/\.png/'` $$f --export-height=43px; done

readme:
	cat makingreadme/introduction > README.md ;#
	echo "##Logos" >> README.md ;#
	echo "###General" >> README.md ;#
	for f in tld-general/*.png ; do TLDNAME=`echo $$f | sed -e 's/\.png$$//'` ; echo "<img src=\"$${TLDNAME}.png\"   height=\"43px\" /> ([SVG]($${TLDNAME}.svg))" >> README.md ; echo "" >> README.md  ; done ;
	echo "###Infrastructure" >> README.md;
	echo "###Reserved" >> README.md;
	echo "###Country code top-level domains" >> README.md;
	for f in ccTLD/*.png ; do TLDNAME=`echo $$f | sed -e 's/\.png$$//'` ; echo "<img src=\"$${TLDNAME}.png\"   height=\"43px\" /> ([SVG]($${TLDNAME}.svg))" >> README.md ; echo "" >> README.md  ; done ;
	cat makingreadme/aboutreadme >> README.md ;#
