all: test

clean:
	@rm -rf build

test: clean
	@mkdir build && cp **/*.hs build
	@cd build && find *Test.hs -exec ghc --make -O2 $1 '{}' \;
	@find **/*Test -exec $1 '{}' \;