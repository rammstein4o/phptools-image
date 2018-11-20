### PHP Coding Standards Fixer
[![GitHub Logo](/images/logo.png)](https://github.com/FriendsOfPHP/PHP-CS-Fixer)


```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 php-cs-fixer fix ./src
```

### PHP CodeSniffer
```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpcs ./src
```

### PHP Coding Standards Fixer
```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpcbf ./src
```

### PHP Mess Detector
```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpmd ./src/ html cleancode --reportfile ./phpmd.html
```

### PhpMetrics
```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpmetrics --report-html=./report ./src
```

### PHP Copy past detector
```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpcpd ./src
```

### PhpCodeFixer
```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phpcf --target 7.1 ./src
```

### dePHPend
```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 dephpend metrics ./src
```

### PhpLoc
```bash
docker run --rm -u 1000 -v ${PWD}/:/project rammstein4o/phptools-image:0.1.1 phploc ./src
```
