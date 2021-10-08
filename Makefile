build:
	plantuml "./diagrams" -o "./imgs"

package: build
	rm -f  dmashchenko-workshop.zip
	zip -r dmashchenko-workshop.zip . -x ".idea/*" ".git/*"

package-for-review: build
	convert "./diagrams/imgs/erd.png" "./diagrams/imgs/data-flow.png" "./diagrams/imgs/deployment.png" -quality 100 review.pdf
