# Git HW2

**1. На локальном репозитории сделать ветки для:**
- **Postman:**
```bash
git branch Postman
```
- **Jmeter:**
```bash
git branch Jmeter
```
- **CheckLists:**
```bash
git branch CheckLists
```
- **Bag Reports:**
```bash
git branch Bag_Reports
```
- **SQL:**
```bash
git branch SQL
```
- **Charles:**
```bash
git branch Charles
```
- **Mobile testing:**
```bash
git branch Mobile_testing
```
**2. Запушить все ветки на внешний репозиторий:** 
```bash
git push origin --all
```
**3. В ветке Bag Reports сделать текстовый документ со структурой баг репорта:**
```bash
git checkout Bag_Reports

vim report.txt

id
summary
description
str
AR
ER
severity
priority
attachments

git add .
git commit -m "add reports.txt" (можно одной командой git commit -am "add reports.txt")
```
**4. Запушить структуру багрепорта на внешний репозиторий:** 
```bash
git push
```
**5. Вмержить ветку Bag Reports в Main:**   
```bash
git checkout main
git merge Bag_Reports -m "merge reports.txt"
```					    
**6. Запушить main на внешний репозиторий:** 
```bash
git push
```
**7. В ветке CheckLists набросать структуру чек листа:**  
```bash
git checkout CheckLists

vim checklist.txt

id
testing
expected result
actual result

git add .
git commit -m "add checklist.txt" (можно одной командой git commit -am "add checklist.txt")
```
**8. Запушить структуру на внешний репозиторий:** 
```bash
git push
```
**9. На внешнем репозитории сделать Pull Request ветки CheckLists в main:**  
```bash
Contribute
Open pull request "add checklist.txt"
Create pull request
Merge pull requesrt "add checklist.txt"
```
**10. Синхронизировать Внешнюю и Локальную ветки Main:**  
```bash
git checkout main
git fetch
git pull
git push
```
