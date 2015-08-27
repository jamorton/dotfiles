
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(setq backup-directory-alist
  `(("." . ,(expand-file-name
             (concat
              (file-name-directory load-file-name)
              "backups")))))

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(add-hook 'after-init-hook #'global-flycheck-mode)
