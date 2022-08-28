# Basic commands
git clone
    Clone entire repository to local
    Example: https://github.com/ghanitutorsbot/GitLesson1.git

git add
    Use to add the files

        git add file1
        git add file1 file2
        git add .

git commit

        git commit -m singleword
        git commit -m "double word"

git push
        
        push the latest commit to remote from local
git pull
        
        get the latest commit from remote to local
        git pull origin master - to pull master file

git init
        Initialize the

git remote
        git remote 
        git remote get-url origin
        git remote add origin https://github.com/ghanitutorsbot/DEVOPS_NOTES.git

git push
        git push --set-upstream origin master

# Advanced Commands

git branch

        git branch branchname       - To create new branch
        git checkout branchname     - to checkout to the branch name given


git checkout
        git checkout branchname

git merge
        go to the destination branch first using command git checkout
        
        git merge sourcebranchname destinationbranchname

git rebase
        we dont want to the destination branch
        
        git rebase sourcebranchname destinationbranchname

git revert

git reset


#Extra commands

git status
git --help
git --version
git log
    Display the commit history


