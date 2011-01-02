all: test

help:
	@echo
	@echo "Please use 'make <target>' where <target> is one of"
	@echo "  syntax    check for syntax errors)"
	@echo "  test      to execute all tests"
	@echo


syntax: 
	@echo "testing /usr/bin/perl syntax and dependencies"
	@/usr/bin/perl -c test/test.pl
	@/usr/bin/perl -c lib/dnamatching.pm

test: syntax
	@echo "Testing..."
	@/usr/bin/perl test/test.pl

