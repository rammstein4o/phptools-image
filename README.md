### PHP Coding Standards Fixer
[GitHub](https://github.com/FriendsOfPHP/PHP-CS-Fixer)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 php-cs-fixer fix ./src
```

### PHP CodeSniffer
[GitHub](https://github.com/squizlabs/PHP_CodeSniffer)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpcs ./src

docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpcbf ./src
```

### PHP Mess Detector
[Documentation](https://phpmd.org/documentation/index.html)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpmd ./src/ html cleancode --reportfile ./phpmd.html
```

### PhpMetrics
[GitHub](https://github.com/phpmetrics/PhpMetrics)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpmetrics --report-html=./report ./src
```

### PHP Copy past detector
[GitHub](https://github.com/sebastianbergmann/phpcpd)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpcpd ./src
```

### PhpCodeFixer
[GitHub](https://github.com/wapmorgan/PhpCodeFixer)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpcf --target 7.1 ./src
```

### dePHPend
[GitHub](https://github.com/mihaeu/dephpend)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 dephpend metrics ./src
```

### PhpLoc
[GitHub](https://github.com/sebastianbergmann/phploc)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phploc ./src
```
