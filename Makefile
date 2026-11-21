.PHONY: test

shellcheck.out: install rofi-askpass
	shellcheck $^ > $@

test: shellcheck.out
	@echo "Done."
