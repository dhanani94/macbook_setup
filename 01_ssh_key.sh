#!/bin/bash


echo "enter email address for github"
read email

echo "setting up ssh"
ssh-keygen -t ed25519 -C $email -f ~/.ssh/id_ed25519
eval "$(ssh-agent -s)"
ssh-add --apple-use-keychain ~/.ssh/id_ed25519

echo "copying public ssh key"
cat ~/.ssh/id_ed25519.pub | pbcopy

echo "please paste key here: https://github.com/settings/keys"
read -p "then press enter to continue"

ssh -T git@github.com


echo "what is your name? (used for git pushes and stuff)"
read name

git config --global user.email $email
git config --global user.name $name