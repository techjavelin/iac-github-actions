
.phony: test/pipeline

lint:
	@find .github -type -f -name "*.yml" -exec ./dev_tools/action-validator_linux_amd64 {} \;

test/pipeline:
	./dev_tools/act