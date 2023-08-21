**1. Создать новый проект**
```bash
mkdir Hexlet-Git
```
**2. Перейти в созданный репозиторий**
```bash
cd Hexlet-Git
```
**3. Выполнить инициализацию**
```bash
git init
```
**4. Посмотреть статус репозитория**
```bash
git status
```
**5. Создать файл README.md со строкой текста**
```bash
echo 'Hello, Hexlet!' > README.md
echo 'Haskell Curry' > PEOPLE.md
```
**6. Добавить файл под git**
```bash
git add git add README.md
```
**7. Сделать коммит**
```bash
git commit -m 'add README.md'
```
**8. Добавьте файл PEOPLE.md в репозиторий**
```bash
git add PEOPLE.md
```
**9. Репозиторий для работы находится в директории code-user. Перейти в неё нужно в терминале. Добавьте в репозиторий два файла двумя разными коммитами:
hexlet.txt с текстом Hello, Hexlet! index.html с текстом <h1>Мама, я коммичу</h1>**
```bash
cd code-user
echo 'Hello, Hexlet!'>hexlet.txt
git add hexlet.txt
git commit -m 'add hexlet.txt' echo '<h1>Мама, я коммичу</h1>'>index.html
git add index.html
git commit -m 'add index.html'
```
**10. Создать репозиторий на GitHub без добавления файлов**
```bash
Repositories -> New -> Hexlet-Git -> отключить чекбокс «Add a README file»
```
**11. Связать внешний репозиторий с локальным**
```bash
git remote add origin git@github.com:<vypiemzalyubov/Hexlet-Git.git
git branch -M main
git push -u origin main
```
**12. Удалить локальный репозиторий и склонировать внешний**
```bash
git clone git@github.com:vypiemzalyubov/Hexlet-Git.git
```
**13. Синхронизировать репозитории**
```bash
git pull --rebase
```
**14. Добавьте новый файл NEW.md с произвольным содержимым в репозиторий (нужно выполнить коммит) и залейте изменения на Github**
```bash
echo 'произвольное содержимое'>NEW.md
git add NEW.md
git commit -m 'add NEW.md'
git push
```
**15. Выполните клонирование репозитория. Находясь в той директории, которая загружается автоматически в терминале, первый параметр «откуда», второй — «куда»**
```bash
git clone repos/git-user code-user
cd code-user
```
**16. В репозитории уже есть два файла. Измените их так:**
- **В hexlet.txt добавьте второй строчкой текст I like to change files**
- **В index.html замените текст на <h1>С помощью гит можно писать книги</h1>**
**Выполните один коммит, содержащий сразу эти два изменения. Во время коммита git попросит установить емейл и имя пользователя. Сделайте это, используя любые вымышленные данные.
Добавьте изменения в основной репозиторий с помощью git push**
```bash
echo 'I like to change files'>>hexlet.txt
echo '<h1>С помощью гит можно писать книги</h1>'>index.html
git add .
git commit -m 'update hexlet.txt and index.html'
git config --global user.email 'myemail@gmail.com'
git config --global user.name 'vypiemzalyubov'
git commit -m 'update hexlet.txt and index.html'
git push
```
**17. Удалить PEOPLE.md в рабочей директории и затем восстановить его**
```bash
rm PEOPLE.md
git status
git restore PEOPLE.md
```
**18. Удалить PEOPLE.md и закоммитить**
```bash
rm PEOPLE.md
git add PEOPLE.md
git commit -m 'remove PEOPLE.md'
```bash
**19. Удалите файл NEW.md и сделайте коммит**
```bash
rm NEW.md
git add NEW.md
git commit -m 'remove NEW.md'
```
**20. Добавьте файл INFO.md с текстом git is awesome! и сделайте коммит и залейте изменения на GitHub**
```bash
echo 'git is awesome!'>INFO.md
git add .
git commit -m 'add INFO.md'
git push
```
21. В рабочей директории два изменения: один файл удален, другой изменен. Отмените эти изменения.
Вывод git status должен выглядеть следующим образом:
$ git status
nothing to commit, working tree clean
git restore hexlet.txt
git restore index.html
git status
22. Редактировать файлы INFO.md и PEOPLE.md и посмотреть изменения
echo 'new line' >> INFO.md
echo 'Hello, Hexlet! How are you?' > README.md
git diff
23. Сделайте коммит с сообщением add new content и залейте изменения на GitHub
git add .
git commit -m ‘add new content’
git push
24. Удалите файл index.html. Переименуйте файл hexlet.txt в hexlet2.txt
После каждого действия добавляйте изменения в отслеживание и изучайте вывод команды git diff --staged и
git status. Обратите внимание на различия вывода последней команды до добавления изменений в индекс и
после. Закоммитьте каждое изменение отдельно
rm index.html
git add index.html
git diff --staged
git status
git commit -m 'remove index.html'
mv hexlet.txt hexlet2.txt
git add .
git diff --staged
git status
git commit -m 'rename hexlet.txt to hexlet2.txt'
25. Выполнить команды, анализирующие историю изменений
git log
git show 5120bea3
git blame INFO.md
git grep line
26. Посмотрите изменения, сделанные в последнем коммите. Внесите обратные изменения в файл hexlet2.txt.
Сделайте коммит. Таким образом новым коммитом мы перезаписываем изменения, сделанные в последнем
коммите
git log -p
echo 'Hello Hexlet!' > hexlet2.txt
git add hexlet2.txt
git commit -m 'update hexlet2.txt'
27. Создать папку и файл, а затем отменить эти операции
mkdir one
touch two
git clean -fd
28. Создать файл и отменить изменения
echo 'new text' > INFO.md
git restore INFO.md
29. Создать файл, добавить под git и отменить изменения в индексе
echo 'new text' > INFO.md
git add INFO.md
git restore --staged INFO.md
30. Отмените все изменения, сделанные в рабочей директории и индексе. В результате должен получиться такой
вывод:
$ git status
nothing to commit, working tree clean
git restore hexlet.txt
git restore --staged index.md index.html
git restore index.html
git clean -fd
31. Удалить файл PEOPLE.md, закоммитить, затем отменить коммит
rm PEOPLE.md
git add .
git commit -m ‘remove PEOPLE.md’
git revert aa600a43cb164408e4ad87d216bc679d097f1a6c
32. Добавить новый коммит и удалить
echo 'test' >> INFO.md
git add INFO.md
git commit -m 'update INFO.md'
git reset --hard HEAD~
33. Полностью удалите два последних коммита
git reset --hard HEAD~2
34. Добавить изменения в INFO.md и README.md, добавить INFO.md под Git и закоммитить. Добавить под Git
README.md и закоммитить в текущий коммит
echo 'experiment with amend' >> INFO.md
echo 'experiment with amend' >> README.md
git add INFO.md
git commit -m 'add content to INFO.md and README.md'
git add README.md
git commit --amend
35. Вы сделали коммит, но забыли добавить в него пару файлов. Измените последний коммит так, чтобы он
содержал все три файла одновременно
git add .
git commit --amend
36. В файл hexlet.txt было добавлено несколько строк. Используя интерактивный режим git add, разбейте
изменения на две части и затем добавьте в индекс одну из них. Выведите на экран состояние изменений
подготовленных к коммиту в интерактивном режиме с помощью status. Сделайте коммит, в комментарии
которого напишите значение из столбца staged
git status
git diff
git add -i
patch
1
# Подтверждаем выбор нажатием Enter
s
y
n
status
quit
git commit -m '+2/-0'
37. Вы сделали несколько коммитов в репозиторий, и в каком-то из них сохранили файл todo.md со списком
задач, а потом удалили этот файл. Загвоздка в том, что в комментарии к коммиту добавление этого файла
отражено не было.
Найдите в истории коммит, в котором был добавлен файл todo.md, и переключитесь на него с помощью git
checkout
git log -p --oneline -- todo.md
git checkout 7c2fcf8
38. Проигнорируйте и удалите из репозитория, если это необходимо, но не удаляйте из рабочей директории,
файлы notes.txt и todo.md, а затем сделайте коммит со всеми изменениями
echo 'notes.txt' > .gitignore
echo 'todo.md' >> .gitignore
git rm --cached notes.txt
git commit -m 'remove notes.txt from repo'
git add hexlet.txt
git commit -m 'update hexlet.txt'
git add .gitignore
git commit -m 'add .gitignore'
39. В репозитории создано 2 дополнительные ветки, помимо main.
Переключитесь на ветку refactoring и удалите два последних коммита с помощью git reset --hard.
В ветке working-on-html сделайте коммит, отредактировав файл index.html следующим образом:
Замените содержимое тега h1 на «Ветки в Git достойны отдельного курса»
Замените содержимое тега p на «Ветки являются ссылками на определённый коммит.»
git switch refactoring
git reset --hard HEAD~2
git switch working-on-html
vim index.html
git add index.html
git commit -m 'fix index.html'
40. В рабочей директории уже есть изменения, сохраните их с помощью git stash.
- Создайте файл todo.md с любым содержимым
- Добавьте в файл hexlet.txt строку: «stash не трогает новые файлы, которые ещё не добавлены в индекс.»
- Сделайте коммит
- Восстановите сохранённые ранее изменения
- Сделайте еще один коммит, включающий и новые файлы
git add .
git stash
echo 'Hexlet is awesome!' > todo.md
echo 'stash не трогает новые файлы, которые ещё не добавлены в индекс.' >> hexlet.txt
git add .
git commit -m 'refactoring'
git stash pop
git commit -am 'changes from stash'
