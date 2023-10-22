## Работа на сервере

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
