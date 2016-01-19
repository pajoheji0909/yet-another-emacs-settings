;; list the packages to install
(setq install-package-list '(jade-mode ;;packages for jade
			     less-css-mode ;;packages for css
			     company-web
			     js2-highlight-vars angular-mode ;;packages for javascript
			     typescript-mode ;;packages for typescript
			     json-mode ;;packages for json

			     nodejs-repl ;;packages for node

			     emacsql-mysql ;;packages for mysql

			     hindent
			     haskell-mode haskell-tab-indent shm ;;package for haskell

			     haskell-emacs ;;packages for emacs


			     markdown-mode+ markdown-preview-eww markdown-preview-mode gh-md;;pacakges for markdown
			     
			     projectile how-many-lines-in-project egg gh;;packages for project managing
			     rainbow-delimiters smartparens;;common packages
			     ))

(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;;			 ("marmalade" . "https://marmalade-repo.org/")
;;			 ("marmalade" . "https://marmalade.ferrier.me.uk/")
			 ("melpa" . "https://melpa.org/packages/")))
(package-initialize)
(or (file-exists-p package-user-dir)
    (package-refresh-contents))

(dolist (package install-package-list)
 (unless (package-installed-p package)
   (package-install package)))

(makunbound 'install-package-list)
