#!/bin/zsh

function publicproject() {
    echo "Creating $1 on Github"
    cd /PATH #Enter Your Shell Directory Here
    python publicrepo.py "$1"
    echo "Creating Public Project:" $1
    cd /PATH #Enter Your Project Directory Here
    mkdir $1
    cd $1
    echo "Creating README"
    touch README.md
    echo "Initializing GIT repo"
    git init
    git remote add origin https://github.com/{username}/$1.git
    git add .
    git commit -m "Initial Commit"
    git push -u origin master
    code .
}

function privateproject() {
    echo "Creating $1 on Github"
    cd /PATH #Enter Your Shell Directory Here
    python privaterepo.py "$1"
    echo "Creating Private Project:" $1
    cd /PATH #Enter Your Project Directory Here
    mkdir $1
    cd $1
    echo "Creating README"
    touch README.md
    echo "Initializing GIT repo"
    git init
    git remote add origin https://github.com/{username}/$1.git
    git add .
    git commit -m "Initial Commit"
    git push -u origin master
    code .
}

