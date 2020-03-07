#!/bin/bash

# alias create='function create() { cd; python create.py $1; cd repos/github/$1; git init; git remote add origin https://github.com/JasonDeJesuz/$1.git; touch README.md; git add .; git commit -m "Initial Commit"; git push -u origin master; code .; }; create'

function create() { 
    cd; 
    python create.py $1; 
    cd repos/github/$1; 
    git init; 
    git remote add origin https://github.com/JasonDeJesuz/$1.git;
    touch README.md; 
    git add .; 
    git commit -m "Initial Commit"; 
    git push -u origin master; 
    code .; 
}; 

# source ~/.my_commands.sh