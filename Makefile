clean:
	@rm -rf tests/tmp

cleantests:
	@rm -rf tests/tmp/.git
	@rm -rf tests/tmp/empty

generate:
	@bash -c 'source tests/helpers.sh && generate ${PWD} tests/tmp'

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

DUTIES = \
	test-changelog \
	test-check-api \
	test-check-dependencies \
	test-clean \
	test-coverage \
	test-docs \
	test-docs-deploy \
	test-format \
	test-release \
	test-check-quality \
	test-check-docs \
	test-check-types \
	test-test

$(DUTIES):
	@cd tests/tmp && make $(subst test-,,$@)
