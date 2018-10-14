all: build

build:
	sleep 0

tag:
	git add --all
	git commit -m "release $(cat VERSION)" --allow-empty # if first release then no verion update is performed
	git tag -fa v$(cat VERSION) -m "Release version $(cat VERSION)"
	git push origin v$(cat VERSION)