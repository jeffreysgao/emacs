
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; (package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp")

(load-file "~/.emacs.d/platform.el")
(load-file "~/.emacs.d/vars.el")
(load-file "~/.emacs.d/packages.el")
(load-file "~/.emacs.d/setting-functions.el")
(load-file "~/.emacs.d/settings.el")
(load-file "~/.emacs.d/functions.el")
(load-file "~/.emacs.d/themes.el")

(load-file "~/.emacs.d/alias.el")
(load-file "~/.emacs.d/locals.el")

;; for emailing with emacs!
(setq mail-archive-file-name "~/.emacs.d/sentmail")
(defconst user-mail-address "jeffrey.s.gao@gmail.com")

(set-register ?e '(file . "~/.emacs.d/init.el"))
(set-register ?s '(file . "~/.emacs.d/settings"))
(set-register ?a '(file . "~/.emacs.d/alias.el"))
(put 'scroll-left 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("5c7720c63b729140ed88cf35413f36c728ab7c70f8cd8422d9ee1cedeb618de5" "21d2bf8d4d1df4859ff94422b5e41f6f2eeff14dd12f01428fa3cb4cb50ea0fb" "d97ac0baa0b67be4f7523795621ea5096939a47e8b46378f79e78846e0e4ad3d" "7d27831ef0edaf5dbb8094f4ed71d4d31d07f1fd3aa334cae4cbe8a961f6d0cb" "a9eeab09d61fef94084a95f82557e147d9630fbbb82a837f971f83e66e21e5ad" "f6ea954a9544b0174a876d195387f444da441535ee88c7fb0fc346af08b0d228" "c9d837f562685309358d8dc7fccb371ed507c0ae19cf3c9ae67875db0c038632" "19d62171e83f2d4d6f7c31fc0a6f437e8cec4543234f0548bad5d49be8e344cd" "0325a6b5eea7e5febae709dab35ec8648908af12cf2d2b569bedc8da0a3a81c1" "e6df46d5085fde0ad56a46ef69ebb388193080cc9819e2d6024c9c6e27388ba9" default))
 '(package-selected-packages
   '(doom-themes zenburn-theme yaml-mode web-mode smart-tab scss-mode scratch scala-mode sass-mode rspec-mode php-mode markdown-mode magit lua-mode helm-z helm-ls-git haskell-mode groovy-mode go-mode gitignore-mode gitconfig-mode flycheck expand-region exec-path-from-shell evil-surround evil-paredit evil-numbers evil-leader diminish csv-mode coffee-mode)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
