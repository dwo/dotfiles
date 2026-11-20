.PHONY: test

shellcheck.out: install rofi-askpass
	shellcheck install rofi-askpass > shellcheck.out

test: shellcheck.out
	@echo "Done."
