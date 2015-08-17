#!/usr/bin/env zsh

cd ${0:a:h}

git pull origin master
git submodule update --init --recursive

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "setup.sh" --exclude "README.md" --exclude ".gitmodules" -a . ~;
(cd ~/.emacs.d ; cask install)

if [ -z $ZSH_NAME ]; then
   chsh -s /bin/zsh;
fi

chmod -R +x ~/bin
chmod +x ~/.osx
cp -f ~/.zshprompt ~/.zprezto/modules/prompt/functions/prompt_jamorton_setup
