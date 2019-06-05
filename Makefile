test:
	vendor/bin/phpunit --colors tests

compat:
	TEST_SCSS_COMPAT=1 vendor/bin/phpunit --colors tests | tee /tmp/incompatible.log | tail -2

standard:
	vendor/bin/phpcs --standard=PSR2 bin src example tests *.php
