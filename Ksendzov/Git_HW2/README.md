# Git HW2

<div id="header" align="center">
  <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/e/e0/Git-logo.svg/640px-Git-logo.svg.png" width="100"/>
</div>

\
**1. На локальном репозитории сделать ветки для:**

**Postman:**       	git branch Postman\
**Jmeter:**		git branch Jmeter\
**CheckLists:** 	git branch CheckLists\
**Bag Reports:**	git branch Bag_Reports\
**SQL:**		git branch SQL\
**Charles:**		git branch Charles\
**Mobile testing:**	git branch Mobile_testing

**2. Запушить все ветки на внешний репозиторий:** 

git push origin --all

**3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта:**

git checkout Bag_Reports\
\
vim report.txt\
\
id\
summary\
description\
str\
AR\
ER\
severity\
priority\
attachments\
\
git add .\
git commit -m "add reports.txt" (можно одной командой git commit -am "add reports.txt")

**4. Запушить структуру багрепорта на внешний репозиторий:** 

git push

**5. Вмержить ветку Bag Reports в Main:**   

git checkout main\
git merge Bag_Reports -m "merge reports.txt"
					    
**6. Запушить main на внешний репозиторий:** 

git push

**7. В ветке CheckLists набросать структуру чек листа:**  

git checkout CheckLists\
\
vim checklist.txt\
\
id\
testing\
expected result\
actual result\
\
git add .\
git commit -m "add checklist.txt" (можно одной командой git commit -am "add checklist.txt")

**8. Запушить структуру на внешний репозиторий:** 

git push

**9. На внешнем репозитории сделать Pull Request ветки CheckLists в main:**  

Contribute\
Open pull request "add checklist.txt"\
Create pull request\
Merge pull requesrt "add checklist.txt"

**10. Синхронизировать Внешнюю и Локальную ветки Main:**  

git checkout main\
git fetch\
git pull\
git push
