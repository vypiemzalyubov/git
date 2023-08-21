**3. В директории /home/box/REPO располагается локальный репозиторий. Необходимо при помощи команды git checkout откатить содержимое файла checkout_file.txt до коммита, сообщение которого было "checkout commit". Содержимое остальных файлов не должно меняться.**

```bash
cd /home/box/REPO
git log
git checkout 90752c89fbd73b09976e16e481356c03c1ed4637 checkout_file.txt
```
