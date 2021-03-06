;;; yaes-git --- git related package setting of yaes
;;;
;;; Commentary:
;;;
;;; Code:

(require 'req-package)

(req-package magit
  :if (version<= "24.4" emacs-version)
  :require (async dash)
  :config
  (setenv "GIT_ASKPASS" "git-gui--askpass")
  (setenv "SSH_ASKPASS" "git-gui--askpass")
  :bind
  (("C-x v S" . magit-status)))

(req-package magithub
  :if (and
       (version<= "24.4" emacs-version)
       (executable-find "hub"))
  :require (magit)
  :config
  (magithub-feature-autoinject t))

(provide 'yaes-git)
;;; yaes-git.el ends here
