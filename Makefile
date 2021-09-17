build:
	plantuml "./diagrams" -o "./imgs"

package: build
	rm -f  dmashchenko-workshop.zip
	zip -r dmashchenko-workshop.zip . -x ".idea/*" ".git/*"
