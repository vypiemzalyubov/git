**3. Репозиторий https://github.com/OSLL/git_course_example_repo склонирован в папку $HOME/REPO. Настройте его локальную конфигурацию так, чтобы можно было выполнять команду push на сервер, не вводя логин и пароль github аккаунта.**

```bash
cd REPO/
git remote set-url origin git@github.com:OSLL/git_course_example_repo
git remote --v
```
