@echo off
setlocal
call build
git add .
git commit
git push