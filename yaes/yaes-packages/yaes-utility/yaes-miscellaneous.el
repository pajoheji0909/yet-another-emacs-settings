(require 'req-package)

;; Powerful package for search and replace
(req-package anzu
  ;; required emacs version : ???
  :require (cl-lib smart-mode-line)
  :config (progn
			(global-anzu-mode t)
			(global-set-key (kbd "M-%") 'anzu-query-replace)
			(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)))

(provide 'yaes-miscellaneous)