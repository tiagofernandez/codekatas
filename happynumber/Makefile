all: test

clean:
	@echo "Cleaning..."
	@xcodebuild clean

compile: clean
	@echo "Compiling..."
	@xcodebuild build

# TODO Launch GHUnit somehow
test: compile
	@echo "Testing..."
	@xcodebuild -target UnitTests