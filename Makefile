clean:
	@rm -rf tests/tmp

cleantests:
	@rm -rf tests/tmp/.git
	@rm -rf tests/tmp/empty

test: cleantests
	@./runtests.sh

update-deps:
	@./update-deps.sh

changelog:
	@git-changelog . -s angular -t keepachangelog -o CHANGELOG.md

release:
	@git add CHANGELOG.md
	@git commit -am "docs: Update changelog for version $(version)"
	@git tag $(version)
	@git push
	@git push --tags
