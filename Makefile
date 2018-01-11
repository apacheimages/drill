VERSION = 1.12
PROJECT = drill
REPOSITORY = apacheimages/${PROJECT}

all:
	docker build -t ${REPOSITORY}:${VERSION}-SNAPSHOT .
	docker build -t ${REPOSITORY} .
  
shell:
	docker run -it -v $(CURDIR):/data -p 8047:8047 --rm apacheimages/${PROJECT}:${VERSION}-SNAPSHOT /bin/bash