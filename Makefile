.phony: test

shellcheck.out: install
	shellcheck install > shellcheck.out

test: shellcheck.out
	@echo "Done."
