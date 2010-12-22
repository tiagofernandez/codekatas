all: test

clean:
	@echo "Cleaning..."
	@xcodebuild clean

compile: clean
	@echo "Compiling..."
	@xcodebuild build

test: compile
	@echo "Testing..."
	@xcodebuild -target Test

run:
	@echo "Running..."
	@open build/Debug/Main.app/