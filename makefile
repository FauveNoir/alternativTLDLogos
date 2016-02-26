image: */*.svg
	#for f in *.svg ; do ls $$f ; done
	for f in ./tld-general/*.svg ; do ls $$f ; inkscape --export-png=`echo $${f} | sed -e 's/\.svg$$/\.png/'` $$f --export-width=100px; done

readme:
	cat makingreadme/introduction > README.md ;#
	echo "##General" >> README.md ;#
	for f in tld-general/*.svg ; do TLDNAME=`echo $$f | sed -e 's/\.svg$$//'` ; echo "<img src=\"$${TLDNAME}.png\"   width=\"100px\" /> ([SVG]($${TLDNAME}.png))" >> README.md ; echo "" >> README.md  ; done ;
	echo "##General" >> README.md ;#
	echo "##Infrastructure" >> README.md;
	echo "##Reserved" >> README.md;
	echo "##Country code top-level domains" >> README.md;
