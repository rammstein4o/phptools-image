### PHP Coding Standards Fixer
[GitHub](https://github.com/FriendsOfPHP/PHP-CS-Fixer)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 php-cs-fixer fix ./src
```

### PHP CodeSniffer
[GitHub](https://github.com/squizlabs/PHP_CodeSniffer)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phpcs ./src

docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phpcbf ./src
```

### PHP Mess Detector
[Documentation](https://phpmd.org/documentation/index.html)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phpmd ./src/ html cleancode --reportfile ./phpmd.html
```

### PhpMetrics
[GitHub](https://github.com/phpmetrics/PhpMetrics)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phpmetrics --report-html=./report ./src
```

### PHP Copy past detector
[GitHub](https://github.com/sebastianbergmann/phpcpd)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phpcpd ./src
```

### PhpCodeFixer
[GitHub](https://github.com/wapmorgan/PhpCodeFixer)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phpcf --target 7.1 ./src
```

### dePHPend
[GitHub](https://github.com/mihaeu/dephpend)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 dephpend metrics ./src
```

### PhpLoc
[GitHub](https://github.com/sebastianbergmann/phploc)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phploc ./src
```

### Phan (Static Analysis Tool)
[GitHub](https://github.com/phan/phan)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phan -p -d ./src -o ./phan.txt
```

### churn-php
[GitHub](https://github.com/bmitch/churn-php)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 churn run ./src
```

### PHPStan (Static Analysis Tool)
[GitHub](https://github.com/phpstan/phpstan)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phpstan analyse ./src --level=7
```

### Rector
[GitHub](https://github.com/rectorphp/rector)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 rector process ./src --autoload-file ./vendor/autoload.php
```

### PHP Magic Number Detector
[GitHub](https://github.com/povils/phpmnd)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 phpmnd ./src --ignore-funcs=round,sleep
```

### PHP VarDump Check
[GitHub](https://github.com/JakubOnderka/PHP-Var-Dump-Check)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 var-dump-check --no-colors --tracy ./src
```

### Deptrac
[GitHub](https://github.com/sensiolabs-de/deptrac)

```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.2.1 deptrac analyze depfile.yml
```
