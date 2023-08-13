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

	@echo ">>> Setting up build directory"
	( \
		sh build-scripts/setup-build-dir.sh; \
	)

clean:
	@echo ">>> Deconstructing Paper"
	( \
		cd Paper; \
		./gradlew clean; \
	)