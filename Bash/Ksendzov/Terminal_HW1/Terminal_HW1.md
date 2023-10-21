#### 1) Посмотреть где я
```bash
pwd
```

#### 2) Создать папку
```bash
mkdir folder
```

#### 3) Зайти в папку
```bash
cd folder
```

#### 4) Создать 3 папки
```bash
mkdir folder{1..3}
```

#### 5) Зайти в любую папку
```bash
cd folder1
```

#### 6) Создать 5 файлов (3 txt, 2 json)
```bash
touch file{1..3}.txt file{4..5}.json
```

#### 7) Создать 3 папки
```bash
mkdir folder{4..6}
```

#### 8) Вывести список содержимого папки
```bash
ls -la
```

#### 9) + Открыть любой txt файл
```bash
cat >> file1.txt
```

#### 10) + Написать туда что-нибудь, любой текст
```bash
123
```

#### 11) + Сохранить и выйти
```bash
ctrl+c
```

#### 12) Выйти из папки на уровень выше
```bash
cd ..
```

#### 13) Переместить любые 2 файла, которые вы создали, в любую другую папку
```bash
mv folder2/{file1.txt,file2.txt} folder3
```

#### 14) Скопировать любые 2 файла, которые вы создали, в любую другую папку
```bash
cp folder3/{file1.txt,file2.txt} folder2
```

#### 15) Найти файл по имени
```bash
find -iname file1.txt
```

#### 16) Просмотреть содержимое в реальном времени (команда grep) изучите как она работает
```bash
tail -f file3.txt | grep 555
```

#### 17) Вывести несколько первых строк из текстового файла
```bash
cat file3.txt | sed -n 1,2p
head -2 file3.txt # второй вариант
```

#### 18) Вывести несколько последних строк из текстового файла
```bash
tac file3.txt | sed -n 1,2p
tail -2 file3.txt # второй вариант
```

#### 19) Просмотреть содержимое длинного файла (команда less) изучите как она работает
```bash
less folder3/file2.txt
less +F file3.txt # отображать в режиме реального времени
```

#### 20) Вывести дату и время
```bash
date +%c
```

### Задание *
#### 1) Отправить http запрос на сервер http://162.55.220.72:5005/terminal -hw-request
```bash
curl http://162.55.220.72:5005/terminal-hw-request
curl http://162.55.220.72:5005/get_method?name=Dima'&'age=31
```

#### 2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13
```bash
touch script.sh
vim script.sh
```
```bash
#!/bin/bash

cd folder
mkdir folder{1..3}
cd folder1
touch file{1..3}.txt file{4..5}.json
folder{4..6}
ls -la
cd ../
mv folder1/{file1.txt,file2.txt} folder2

:wq
```
```bash
chmod +x ./script.sh
./script.sh
```
