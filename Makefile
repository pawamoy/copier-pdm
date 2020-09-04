clean:
	@rm -rf tests/tmp

test: clean
	@./runtests.sh

update-deps:
	@./update-deps.sh