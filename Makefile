clean:
	@rm -rf tests/tmp

test: clean
	@./runtests.sh
