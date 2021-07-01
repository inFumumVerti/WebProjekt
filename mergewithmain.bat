@ECHO OFF
git checkout main
git pull
git checkout validator
git merge main
git push
PAUSE