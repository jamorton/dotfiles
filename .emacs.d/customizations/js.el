
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(setq js-indent-level 2)
(setq js2-basic-offset 2)

;; Let flycheck handle parse errors
(setq-default js2-show-parse-errors nil)
(setq-default js2-mode-show-strict-warnings nil)
