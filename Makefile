ApertureToGooglePlus-1.1.pkg: ApertureToGooglePlus.pkg Distribution.xml
	productbuild --distribution Distribution.xml --package-path . ApertureToGooglePlus-1.1.pkg

ApertureToGooglePlus.pkg:
	pkgbuild \
	--root ~/Library/Application\ Support/Aperture/Plug-ins/Export/ApertureToGooglePlus.ApertureExport \
	--identifier biz.blueoceans.ApertureToGooglePlus \
	--install-location Library/Application\ Support/Aperture/Plug-ins/Export/ApertureToGooglePlus.ApertureExport \
	--version 1.1 \
	--ownership preserve \
	ApertureToGooglePlus.pkg

Distribution.xml:
	productbuild --synthesize \
	--package ApertureToGooglePlus.pkg \
	Distribution.xml

clean:
	rm *.pkg
