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
Ссылка на скрипт [script1.sh](https://github.com/vypiemzalyubov/git-bash/blob/main/Bash/Stepik/Introduction%20to%20Linux/3.%20Advanced%20topics/script1.sh)

### Скрипты на bash: ветвления и циклы

Напишите скрипт на bash, который принимает на вход один аргумент (целое число от 0 до бесконечности), который будет обозначать число студентов в аудитории. В зависимости от значения числа нужно вывести разные сообщения. 

Соответствие входа и выхода должно быть таким:
```bash
0 -->  No students
1 -->  1 student
2 -->  2 students
3 -->  3 students
4 -->  4 students
5 и больше --> A lot of students
```
Примечание а): выводить нужно только строку справа, т.е. "-->" выводить не нужно.

Примечание б): в последней строке слово "lot" с маленькой буквы!

Примечание 2: в этой и всех последующих задачах на написание скриптов, если не указано явно, что нужно проверять вход (например, что он будет именно числом и именно от 0 до бесконечности), то этого делать не нужно!

Пример №1: если ваш скрипт называется ./script.sh, то при запуске его как ./script.sh 1 на экране должно появиться: `1 student`

Пример №2: если ваш скрипт называется ./script.sh, то при запуске его как ./script.sh 5 на экране должно появиться: `A lot of students`

```bash
vim script2.sh

#!/bin/bash

case $1 in
	0) echo "No students";;
	1) echo "$1 student";;
	2 | 3 | 4 ) echo "$1 students";;
	*) echo "A lot of students";;
esac

chmod + script2.sh
./script2.sh
```
Ссылка на скрипт [script2.sh](https://github.com/vypiemzalyubov/git-bash/blob/main/Bash/Stepik/Introduction%20to%20Linux/3.%20Advanced%20topics/script2.sh)
