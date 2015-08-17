(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))

(require 'cask)
(cask-initialize)

(mapc 'load (directory-files "~/.emacs.d/customizations" t "\.el$"))
