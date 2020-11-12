
# master
git checkout master
git pull --ff upstream master

# master-c
git checkout master-c
git pull --ff upstream-c master

# fork
git checkout fork
git pull --ff --tags upstream master

# feature/tver
git checkout feature/tver
git pull --ff upstream master

# fix/niconico
git checkout fix/niconico
git pull --ff upstream master

# fix/niconico-c
git checkout fix/niconico-c
git pull --ff upstream-c master

# Push all local branches
git push origin --all

# Bring the branch back to the fork
git checkout fork
git push origin --tags
