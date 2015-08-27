
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook  'my-web-mode-hook)

(eval-after-load 'flycheck
  '(flycheck-add-mode 'javascript-eslint 'web-mode))
