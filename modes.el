;;========================================================================
;; Yasnippets - this adds some auto completion commands for several
;; languages
;;========================================================================
;; (add-to-list 'load-path "~/.emacs.d/plugins/yasnippet")
;; (require 'yasnippet)
;; (yas/initialize)
;; (yas/load-directory "~/.emacs.d/plugins/yasnippet/snippets")

;;========================================================================
;; php
;;========================================================================
;; (require 'php-mode)
;; (add-hook 'php-mode-hook
;;           '(lambda () (define-abbrev php-mode-abbrev-table "ex" "extends")))

;; (setq auto-mode-alist (cons '("\\.php$" . php-mode) auto-mode-alist))

;;========================================================================
;; javascript
;;========================================================================
(add-to-list 'auto-mode-alist '("\\.js\\'" . javascript-mode))
(autoload 'javascript-mode "javascript" nil t)

;;========================================================================
;; c sharp
;;========================================================================
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist
      (append '(("\\.cs$" . csharp-mode)) auto-mode-alist))

;;========================================================================
;; MATLAB
;;========================================================================
(autoload 'matlab-mode "~/.emacs.d/matlab.el" "Enter Matlab mode." t)
(autoload 'matlab-shell "~/.emacs.d/matlab.el" "Interactive Matlab mode." t)

;; matlab mode for matlab
(setq auto-mode-alist (cons '("\\.m$" . matlab-mode) auto-mode-alist))

(defun my-matlab-mode-hook ()
  (setq matlab-function-indent t); if you want function bodies indented
  (setq fill-column 76); where auto-fill should wrap
  (font-lock-mode 1)
  (turn-on-auto-fill)
  (if (not running-xemacs)
      (matlab-mode-hilit)))
(setq matlab-mode-hook 'my-matlab-mode-hook)

(defun my-matlab-shell-mode-hook ()
  (setq matlab-function-indent t); if you want function bodies indented
  (setq fill-column 76); where auto-fill should wrap
  (font-lock-mode 1))
(setq matlab-shell-mode-hook 'my-matlab-shell-mode-hook)


;;========================================================================
;; R
;;========================================================================
;;(require 'ess-site)


;;========================================================================
;; CSV
;;========================================================================
(require 'csv-mode)
(add-to-list 'auto-mode-alist '("\\.[Cc][Ss][Vv]\\'" . csv-mode))
(autoload 'csv-mode "csv-mode"
  "Major mode for editing comma-separated value files." t)



;; ==============================================================================
;; MODE AUTOLOAD setup for extensions
;; ==============================================================================

;; processing mode
(setq auto-mode-alist (cons '("\\.pde$" . java-mode) auto-mode-alist))

;; flex mode for CS143 class
(setq auto-mode-alist (cons '("\\.lex$" . java-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.flex$" . c++-mode) auto-mode-alist))

;; figure out how to actually change the default using this for now.
(setq auto-mode-alist (cons '("\\.tex$" . latex-mode) auto-mode-alist))
