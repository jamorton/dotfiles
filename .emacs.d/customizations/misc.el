
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Store backup files in cenrtalized directory
(setq backup-directory-alist
  `(("." . ,(expand-file-name
             (concat
              (file-name-directory load-file-name)
              "backups")))))

;; Load PATH from the shell so exec works
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(add-hook 'after-init-hook #'global-flycheck-mode)
