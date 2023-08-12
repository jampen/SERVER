setup-paper-dev:
	@echo ">>> Extracting Paper Source Code"
	( \
		cd Paper; \
		./gradlew applyPatches; \
	)

build-paper:
	@echo ">>> Building Paper"
	( \
		cd Paper; \
		./gradlew createReobfBundlerJar; \
	)

clean:
	@echo ">>> Deconstructing Paper"
	( \
		cd Paper; \
		./gradlew clean; \
	)