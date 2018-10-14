all: build

build:
	sleep 0

tag:
	git add --all
	git commit -m "release ${VERSION}" --allow-empty # if first release then no verion update is performed
	git tag -fa v${VERSION} -m "Release version $VERSION"
	git push origin v${VERSION}