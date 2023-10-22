## Введение

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
