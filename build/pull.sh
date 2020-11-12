
# master
git checkout master
git pull --ff upstream master

# master-c
git checkout master-c
git pull --ff upstream-c master

# fork
git checkout fork
git pull --ff upstream master

# feature/tver
git checkout feature/tver
git pull --ff upstream master

# fix/niconico
git checkout fix/niconico
git pull --ff upstream master

# fix/niconico-c
git checkout fix/niconico-c
git pull --ff upstream-c master

# 全てのローカルブランチを push
git push origin --all

# ブランチを fork に戻しておく
git checkout fork
