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
	@git-changelog -Tbio CHANGELOG.md -c angular

release:
	@git add CHANGELOG.md
	@git commit -m "docs: Update changelog for version $(version)"
	@git tag $(version)
	@git push
	@git push --tags
