##### Git Functions #####

### General Functions
function goto () {
  git checkout $1;
}

function nbr() {
  git checkout -b $1;
}

## Combine this with setting a $task variable
## in a shell environment to prefix your commits
## with a task id
function cmt() {
  if [[ -z $task ]]; then
    git commit -m "$1";
  else
    git commit -m "$task. $1";
  fi
}

### Sprints
function nspr() {
  git checkout -b sprint$1;
  if [[ $2 == 'remote' ]]; then
    git push origin sprint$1;
  fi
}

function chspr() {
  git checkout sprint$1;
}

function mspr() {
  git merge sprint$1;
}

function psspr() {
  git push origin sprint$1;
}

function plspr() {
  git pull origin sprint$1;
}

### Features
function nft() {
  git checkout -b feature/$1;
  if [[ $2 == 'remote' ]]; then
    git push origin feature/$1;
  fi
}

function chft() {
  git checkout feature/$1;
}

function mft() {
  git merge feature/$1;
}

function psft() {
  git push origin feature/$1;
}

function plft() {
  git pull origin feature/$1;
}

### Issues
function niss() {
  git checkout -b issue/$1;
  if [[ $2 == 'remote' ]]; then
    git push origin issue/$1;
  fi
}

function chiss() {
  git checkout issue/$1;
}

function miss () {
  git merge issue/$1;
}

function psiss() {
  git push origin issue/$1;
}

function pliss() {
  git pull origin issue/$1;
}

### Hotfixes
function nfx() {
  git checkout -b hotfix/$1;
  if [[ $2 == 'remote' ]]; then
    git push origin hotfix/$1;
  fi
}

function chfx() {
  git checkout hotfix/$1;
}

function mfx () {
  git merge hotfix/$1;
}

function psfx() {
  git push origin hotfix/$1;
}

function plfx() {
  git pull origin hotfix/$1;
}
