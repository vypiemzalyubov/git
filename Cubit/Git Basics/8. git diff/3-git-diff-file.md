**3. В директории /home/box/REPO располагается локальный репозиторий. В нем некогда присутствовал файл 8p27aCPz, однако в одном из коммитов он удален. Необходимо при помощи команды git diff определить его содержимое до удаления и записать его в файл /home/box/answer.**

```bash
cd /home/box/REPO
git log
git diff 38db0352e150221648e9b31321258fa4d9450ba8
echo 'cool_and_secret'>>/home/box/answer
```
