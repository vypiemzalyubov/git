## Содержание
- [**Введение**](https://github.com/vypiemzalyubov/bash/blob/main/Stepik/Introduction%20to%20Linux/introduction_to_linux.md#1-%D0%B2%D0%B2%D0%B5%D0%B4%D0%B5%D0%BD%D0%B8%D0%B5)
- [**Работа на сервере**](https://github.com/vypiemzalyubov/bash/blob/main/Stepik/Introduction%20to%20Linux/introduction_to_linux.md#2-%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0-%D0%BD%D0%B0-%D1%81%D0%B5%D1%80%D0%B2%D0%B5%D1%80%D0%B5)
- [**Продвинутые темы**](https://github.com/vypiemzalyubov/bash/blob/main/Stepik/Introduction%20to%20Linux/introduction_to_linux.md#3-%D0%BF%D1%80%D0%BE%D0%B4%D0%B2%D0%B8%D0%BD%D1%83%D1%82%D1%8B%D0%B5-%D1%82%D0%B5%D0%BC%D1%8B)


## 1. Введение

### Запуск исполняемых файлов

Скачайте [файл](https://stepik.org/media/attachments/course73/lec1_frag4_current_time.py) с программой, сделайте его исполняемым, запустите и скопируйте то, что он выведет на экран, в форму ниже.

```bash
chmod +x lec1_frag4_current_time.py
python3 ./lec1_frag4_current_time.py

# answer
2023-04-07 08:23:52
Control sum: 948
```

### Работа с архивами

Откройте терминал нажатием "Open Terminal". Скачайте в нем архив https://stepik.org/media/attachments/course73/quiz_archive.tar.gz в директорию /home/box . Распакуйте этот архив с использованием ровно одной команды терминала. Нажмите кнопку "Submit".

```bash
wget https://stepik.org/media/attachments/course73/quiz_archive.tar.gz
tar -xvzf quiz_archive.tar.gz 
```

### Поиск файлов и слов в файлах

Cкачайте [архив](https://stepik.org/media/attachments/course73/shakespeare.tar.gz) с произведениями Шекспира. Вам нужно сгенерировать файл, в котором будут все строчки из этих произведений, содержащие “love”, и загрузить этот файл в форму.

```bash
wget https://stepik.org/media/attachments/course73/shakespeare.tar.gz
tar -xzf shakespeare.tar.gz
﻿grep -r "love" Shakespeare >> result.txt
```

## 2. Работа на сервере

### Знакомство с сервером

Для начала выполнения нажмите кнопку "Open Terminal". Открывшийся в браузере терминал будем называть "локальный". Зайдите с этого терминала по SSH на удаленный сервер `server1.stepik-local`. Для доступа к серверу используйте логин `box` и пароль `supersecret`, а порт указывать не нужно - используется порт по умолчанию. Прочитайте содержимое файла `/srv/files_on_server/secret` на удалённом сервере и запишите его в локальный файл `/home/box/secret` (т.е. вам нужно будет выйти с сервера!). Для записи данных в файл воспользуйтесь командой `echo "SECRET TEXT" > /home/box/secret`, где вместо SECRET TEXT нужно указать текст из заданного файла.

```bash
ssh box@server1.stepik-local
cat /srv/files_on_server/secret
exit
echo "I hacked ssh!" > /home/box/secret
```

### Обмен файлами

Для начала выполнения нажмите кнопку "Open Terminal". Открывшийся в браузере терминал будем называть "локальный". Скопируйте при помощи SCP с удаленного сервера `server1.stepik-local` все файлы из директории `/srv/files_on_server/` в локальную директорию `/home/box/files_on_client/` (её нужно будет еще создать!). Для доступа к серверу используйте логин `box` и пароль `supersecret`, а порт указывать не нужно - используется порт по умолчанию.

Примечание: саму директорию `files_on_server` копировать не нужно! Таким образом, все файлы из неё должны лежать прямо в `/home/box/files_on_client/`.

```bash
scp -rp box@server1.stepik-local:/srv/files_on_server/ /home/box/files_on_client/
```

### Запуск приложений

Clustal - это одна из самых широко используемых компьютерных программ для множественного выравнивания нуклеотидных и аминокислотных последовательностей (multiple sequence alignment). У нее есть графическая версия ClustalX и версия для запуска в терминале ClustalW. Вы можете потренироваться запускать его с использованием файла [test.fasta](https://stepik.org/media/attachments/course73/test.fasta).

Посмотрите справку по программе (имеется в виду версия для терминала) и впишите в поле ниже команду, которая запускает в терминале Clustal на файле test.fasta и выполняет множественное выравнивание (multiple alignment). Никакие лишние опции указывать не нужно (только необходимые для выполнения этого задания)!

```bash
clustalw -align test.fasta
```

### Многопоточные приложения

Скачайте файлы, необходимые для запуска bowtie2: [референсный геном](https://stepik.org/media/attachments/course73/reference.fasta) (reference) и [риды](https://stepik.org/media/attachments/course73/reads.fastq.gz) (reads). Запустите программу bowtie2 на этих данных (напоминаем, что запуск состоит из двух этапов!). Вывод stderr второго этапа (т.е. запуск подпрограммы bowtie2) запишите в файл и загрузите его в форму ниже. Мы также рекомендуем вам перенаправлять вывод stdout в файлы на обоих этапах, чтобы он не засорял экран вашего терминала.

Попробуйте теперь запустить второй этап (запуск подпрограммы bowtie2) в несколько потоков. Рекомендуем выставить число потоков равное количеству ядер на вашем компьютере (команда `nproc`). Сравните скорость выполнения в таком режиме с работой в один поток. Также рекомендуем убедиться, что результаты запусков (т.е. вывод в stderr) полностью совпали в обоих режимах!

```bash
wget https://stepik.org/media/attachments/course73/programs/bowtie2-2.1.0-linux-x86_64.zip
wget https://stepik.org/media/attachments/course73/reference.fasta
wget https://stepik.org/media/attachments/course73/reads.fastq.gz
cd Downloads 
unzip -q bowtie2-2.1.0-linux-x86_64.zip
gunzip -c reads.fastq.qz > reads.fastq
mv reads.fastq bowtie2-2.1.0/reads.fastq
cp reference.fasta bowtie2-2.1.0/reference.fasta
cd bowtie2-2.1.0
touch bowtie.log bowtie1.log
bowtie2-build reference.fasta index >> bowtie1.log 2>> bowtie1.log
nproc
bowtie2 -p 4 -x index -U reads.fastq >> bowtie1.log 2>> bowtie.log &
```

## 3. Продвинутые темы

### Текстовый редактор vim

Для начала выполнения нажмите кнопку "Open Terminal". Скачайте в открывшемся терминале архив https://stepik.org/media/attachments/course73/byron.txt.gz в директорию `/home/box` и распакуйте его там (для этого вам пригодятся команды `wget` и `gunzip`).

Откройте в vim файл `/home/box/byron.txt`. Удалите все строки с 1001 по 2000 (включительно). Скопируйте строки с 5 по 11 (включительно) и вставьте их в самый конец файла, добавив одну пустую строку перед этой вставкой (т.е. строчка 5 должна следовать за ровно одной пустой строкой, а та за строкой с номером 6277). Замените в тексте все "Harold" на "Ivan".

Сохраните отредактированный файл с именем `/home/box/byron_edited.txt` (это можно сделать прямо из vim!).

```bash
wget https://stepik.org/media/attachments/course73/byron.txt.gz && gunzip ./byron.txt.gz
vim ./byron.txt
:1001,2000d <Enter>
:5,11y <Enter>
<Shift+G>o<Esc>p
:%s/Harold/Ivan/g <Enter>
:﻿w ~/byron_edited.txt <Enter>
:q! <Enter>
```

### Скрипты на bash: основы

Вы можете скачать и изучить скрипт, который мы показали в видеофрагменте: [arguments.sh](https://stepik.org/media/attachments/course73/bash_scripts/arguments.sh).

Напишите скрипт на bash, который принимает на вход два аргумента и выводит на экран строку следующего вида:
```bash
Arguments are: $1=первый_аргумент $2=второй_аргумент
```
Например, если ваш скрипт называется `./script.sh`, то при запуске его `./script.sh one two` на экране должно появиться: `Arguments are: $1=one $2=two`, а при запуске `./script.sh three four` будет: `Arguments are: $1=three $2=four`

```bash
vim script1.sh

#!/bin/bash
var1=$1
var2=$2
echo "Arguments are: \$1=${1} \$2=${2}"

chmod + script1.sh
./script1.sh
```

### Скрипты на bash: ветвления и циклы
