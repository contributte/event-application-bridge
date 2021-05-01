.PHONY: install qa cs csf phpstan tests coverage-clover coverage-html

install:
	composer update

qa:
	vendor/bin/linter src tests
	vendor/bin/codesniffer src tests

tests:
	vendor/bin/tester -s -p php --colors 1 -c tests/php-unix.ini tests/cases

coverage-clover:
	vendor/bin/tester -s -p php --colors 1 -c tests/php-unix.ini -d extension=xdebug.so --coverage ./coverage.xml --coverage-src ./src tests/cases

coverage-html:
	vendor/bin/tester -s -p php --colors 1 -c tests/php-unix.ini -d extension=xdebug.so --coverage ./coverage.html --coverage-src ./src tests/cases
