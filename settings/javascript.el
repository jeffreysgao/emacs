(require 'web-mode)

(setq js-indent-level 2
      web-mode-markup-indent-offset 2
      web-mode-attr-indent-offset 2
      web-mode-css-indent-offset 2
      web-mode-code-indent-offset 2
      web-mode-content-types-alist '(("jsx" . "\\.js[x]?\\'")))

(defun web-mode-ident-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2
        web-mode-attr-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 2))

(add-hook 'web-mode-hook 'web-mode-use-tabs)
(add-hook 'web-mode-hook 'web-mode-ident-hook)

;;========================================================================
;; javascript
;;========================================================================
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.json$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.bundle.*\\.js$" . javascript-mode))
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.es6$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.coffee\\." . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.coffee$" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.js\\.coffee$" . coffee-mode))

;; =======================================================================
;;  generic web development stuff
;; =======================================================================
(add-to-list 'auto-mode-alist '("\\.ejs$" . html-mode))
(setq coffee-tab-width 2)
(add-to-list 'auto-mode-alist '("Cakefile" . coffee-mode))
