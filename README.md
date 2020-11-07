# elvees-chisel-bootcamp

Буткемп посвященный основам scala, sbt и chisel.

## Binder

Онлайн версия на [bindr](https://notebooks.gesis.org/binder/v2/gh/SpaceCowboyMax/elvees-chisel-bootcamp/master)!

## Installing

Это jupyter notebook, для локального запуска небходимо установить следующие компоненты:

### Jupyter

Зависимости: openssh-client, openjdk-8-jre, openjdk-8-jdk (-headless OK for both), ca-certificates-java

Используем pip3(или pip для python 2): https://jupyter.org/install.html

```bash
pip3 install --upgrade pip
pip3 install jupyter --ignore-installed
```

### Jupyter Backend for Scala

Для корректного исполнения scala кода необходимо установить
`almond`: https://almond.sh/docs/quick-start-install

Для этого понадобится `coursier` : https://get-coursier.io/

```bash
curl -L -o coursier https://git.io/coursier-cli && chmod +x coursier
```

```bash
SCALA_VERSION=2.12.10 ALMOND_VERSION=0.9.1
./coursier bootstrap -r jitpack \
    -i user -I user:sh.almond:scala-kernel-api_$SCALA_VERSION:$ALMOND_VERSION \
    sh.almond:scala-kernel_$SCALA_VERSION:$ALMOND_VERSION \
    --sources --default=true \
    -o almond
./almond --install
```

### Bootcamp

Осталось только склонировать данный репозиторий и добавить custom.js в jupyter.

```bash
git clone git@github.com:SpaceCowboyMax/elvees-chisel-bootcamp.git
cd elvees-chisel-bootcamp
mkdir -p ~/.jupyter/custom
cp source/custom.js ~/.jupyter/custom/custom.js
```

далее запускаем jupyter

```bash
jupyter notebook
```

Данная команда запустит jupyter сервер, далее должен открыться браузер на главной странице буткемпа, если этого не произошло можно найти и скопировать в браузер ссылку, которая появляется в терминале с сервером.

```text
Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://localhost:8888/?token=9c503729c379fcb3c7a17087f05462c733c1733eb8b31d07
```

## Acknowledgments

Данная инструкция по установке является вольной интерпритацией инструкции `chisel-bootcamp`:
https://github.com/freechipsproject/chisel-bootcamp/blob/master/Install.md

## Authors

* **SpaceCowboyMax** - <max@hclbbs.com>