;;; -*- Mode: Emacs-Lisp -*-
;;; my color theme for terminal using default ansi
;;; 
;;; the default foreground color should be
;;; RGB: 170 170 170

;;-------------------------------------------------------------------------
;; Color Theme for use in the terminal!
;;-------------------------------------------------------------------------
(defun color-theme-john-super-theme ()
  "Irfn's zen with a bit of art with a bit of john."
  (interactive)
  (color-theme-install
   '(color-theme-john-super-theme
     ((background-color . "#191717")
      (background-mode . dark)
      (border-color . "#000000")
      (cursor-color . "#A7A7A7")
      (foreground-color . "#D2DEC4")
      (list-matching-lines-face . bold)
      (view-highlight-face . highlight))
     
     (bold ((t (:bold t))))
     (bold-italic ((t (:bold t :underline t))))
     (border ((t (:foreground "black" :background "white"))))
     (cua-global-mark ((t (:background "blue" :foreground "white"))))
     (cua-rectangle ((t (:background "yellow" :foreground "black"))))
     (cua-rectangle-noselect ((t (:background "yellow" :foreground "blue"))))
     (default ((t (nil))))
     (diff-refine-change ((t (:background "yellow" :foreground "black"))))
     (ediff-current-diff-A ((t (:background "green" :foreground "black"))))
     (ediff-current-diff-Ancestor ((t (:background "red" :foreground "black"))))
     (ediff-current-diff-B ((t (:background "cyan" :foreground "black"))))
     (ediff-current-diff-C ((t (:background "magenta" :foreground "black"))))
     (ediff-even-diff-A ((t (:background "white" :foreground "green"))))
     (ediff-even-diff-Ancestor ((t (:background "white" :foreground "red"))))
     (ediff-even-diff-B ((t (:background "white" :foreground "blue"))))
     (ediff-even-diff-C ((t (:background "white" :foreground "black"))))
     (ediff-fine-diff-A ((t (:background "white" :foreground "black"))))
     (ediff-fine-diff-Ancestor ((t (:background "white" :foreground "black"))))
     (ediff-fine-diff-B ((t (:background "white" :foreground "black"))))
     (ediff-fine-diff-C ((t (:background "white" :foreground "black"))))
     (ediff-odd-diff-A ((t (:background "white" :foreground "green"))))
     (ediff-odd-diff-Ancestor ((t (:background "white" :foreground "red"))))
     (ediff-odd-diff-B ((t (:background "white" :foreground "blue"))))
     (ediff-odd-diff-C ((t (:background "white" :foreground "black"))))
     (flymake-errline ((t (:background "LightSalmon" :foreground "black"))))
     (flymake-warnline ((t (:background "LightSteelBlue" :foreground "black"))))
     (flyspell-duplicate ((t (:foreground "black" :background "yellow" :underline t))))
     (flyspell-incorrect ((t (:foreground "red" :background "white" :underline t))))
     (font-latex-math-face ((t (:foreground "green"))))
     (font-lock-builtin-face ((t (:foreground "#86453A"))))
     (font-lock-builtin-face ((t (:foreground "cyan"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#4C565D"))))
     (font-lock-comment-delimiter-face ((t (:foreground "red")))) 
     (font-lock-comment-face ((t (:foreground "red"))))
     (font-lock-comment-face ((t (:italic t :foreground "#333B40"))))
     (font-lock-constant-face ((t (:foreground "#86453A"))))
     (font-lock-constant-face ((t (:foreground "white" :bold t))))
     (font-lock-doc-face ((t (:foreground "#DDFFD1"))))
     (font-lock-doc-face ((t (:foreground "red"))))
     (font-lock-doc-string-face ((t (:foreground "red"))))
     (font-lock-function-name-face ((t (:foreground "#C6B032"))))
     (font-lock-function-name-face ((t (:foreground "magenta"))))
     (font-lock-keyword-face ((t (:bold t)))) ;; :foreground "orange"
     (font-lock-keyword-face ((t (:foreground "#AE5825"))))
     (font-lock-preprocessor-face ((t (:foreground "#007575"))))
     (font-lock-preprocessor-face ((t (:foreground "white"))))
     (font-lock-reference-face ((t (:foreground "#0055FF"))))
     (font-lock-reference-face ((t (:foreground "red"))))
     (font-lock-string-face ((t (:foreground "#5A7644"))))
     (font-lock-string-face ((t (:foreground "green"))))
     (font-lock-type-face ((t (:foreground "cyan"))))
     (font-lock-type-face ((t (:italic t :foreground "#C6B032"))))
     (font-lock-variable-name-face ((t (:foreground "#46657B"))))
     (font-lock-variable-name-face ((t (:foreground "yellow"))))
     (font-lock-warning-face ((t (:bold t :foreground "Pink"))))
     (font-lock-warning-face ((t (:foreground "white" :background "red"))))
     (fringe ((t (:background "#252323"))))
     (fringe ((t (:foreground "black" :background "white"))))
     (header-line ((t (:underline t :background "white" :foreground "black"))))
     (highlight ((t (:background "darkolivegreen"))))
     (highlight-changes      ((t (:inverse-video t))))
     (highlight-changes-delete ((t (:background "red"))))
     (highlight-current-line-face ((t (:background "#252323"))))
     (hl-line ((t (:background "white" :foreground "black"))))
     (isearch ((t (:background "#555555"))))
     (isearch ((t (:underline t :background "magenta" :foreground "black"))))
     (isearch-fail ((t (:underline t :background "red" :foreground "black"))))
     (italic ((t (:inverse-video t))))
     (italic ((t (:italic t))))
     (lazy-highlight ((t (:background "cyan" :foreground "black" :underline t :overline t))))
     (linum ((t  (:foreground "black" :background "white"))))
     (magit-diff-add ((t (:foreground "black" :background "green"))))
     (magit-diff-del ((t (:foreground "black" :background "red"))))
     (magit-diff-file-header ((t (:background "white" :foreground "black"))))
     (magit-diff-hunk-header ((t (:background "white" :foreground "red"))))
     (magit-item-highlight ((t (:foreground "black" :bold t))))
     (magit-log-graph ((t (:foreground "white"))))
     (menu ((t (:background "white" :foreground "black"))))
     (minibuffer-prompt ((t (:bold t :foreground "#ff6600"))))
     (minibuffer-prompt ((t (:foreground "magenta"))))
     (mode-line ((t (:inverse-video t)))) ;; :background "white" :foreground "black"
     (mode-line-buffer-id ((t ())))
     (mode-line-inactive ((t (:background "white" :foreground "black" :inverse-video t))))
     (modeline ((t (:background "#3F3B3B" :foreground "white"))))
     (modeline-buffer-id ((t (:background "#3F3B3B" :foreground "white"))))
     (modeline-mousable ((t (:background "#a5baf1" :foreground "black"))))
     (modeline-mousable-minor-mode ((t (:background "#a5baf1" :foreground "black"))))
     (mumamo-background-chunk-major ((t (:background nil))))
     (mumamo-background-chunk-submode1 ((t (:background "black"))))
     (mumamo-background-chunk-submode2 ((t (:background "black"))))
     (mumamo-background-chunk-submode3 ((t (:background "black"))))
     (mumamo-background-chunk-submode4 ((t (:background "black"))))
     (next-error ((t (:background "red" :foreground "white" :underline t))))
     (nobreak-space ((t (:background "magenta" :foreground "white" :underline t))))
     (paren-face-match-light ((t (:background "#252323"))))
     (primary-selection ((t (:background "#3B3B3F"))))
     (region ((t (:background "#3B3B3F"))))
     (region ((t (:background "blue" :foreground "white"))))
     (secondary-selection ((t (:background "#545459"))))
     (show-paren-match ((t (:background "green" :foreground "black"))))
     (tool-bar ((t (:background "black" :foreground "white" :underline t))))
     (trailing-whitespace ((t (:background "red" :foreground "red"))))
     (underline ((t (:underline t))))
     (viper-minibuffer-emacs ((t (:background "black" :foregound "magenta"))))
     (viper-minibuffer-insert ((t (:background "black" :foreground "magenta"))))
     (viper-search ((t (:underline t :background "magenta" :foreground "black"))))
     (yas/field-highlight-face ((t (:background "magenta" :foreground "black"))))
     (zmacs-region ((t (:background "#555577"))))

     ;; I don't know what to do with these colors yet
     ;;
     ;;
     ;; (buffer-menu-buffer ((t ())))
     ;; (completions-common-part ((t ())))
     ;; (completions-first-difference ((t ())))
     ;; (cursor ((t (:foreground "green"))))
     ;; (default ((t (nil))))
     ;; (erc-action-face ((t (nil))))
     ;; (erc-bold-face ((t (:bold t :weight bold))))
     ;; (erc-command-indicator-face ((t (:bold t :weight bold))))
     ;; (erc-dangerous-host-face ((t (:foreground "red"))))
     ;; (erc-default-face ((t (nil))))
     ;; (erc-notice-face ((t (:foreground "#878899"))))
     ;; (erc-prompt-face ((t (:bold t :foreground "GoldenRod3" :weight bold))))
     ;; (erc-timestamp-face ((t (:bold nil :foreground "gray45" :weight normal))))
     ;; (escape-glyph ((t ())))
     ;; (file-name-shadow ((t ())))
     ;; (fixed-patch ((t ())))
     ;; (font-lock-negation-char-face ((t (:foreground ""))))
     ;; (font-lock-regexp-grouping-backslash ((t (:foreground "blue")))))
     ;; (font-lock-regexp-grouping-blackslash ((t (:foreground "blue"))))
     ;; (font-lock-regexp-grouping-construct ((t (:foreground "green"))))
     ;; (highlight ((t ())))
     ;; (highlight-changes-1      ((t (:inverse-video t))))
     ;; (highlight-changes-2      ((t (:background "white"))))
     ;; (highlight-changes-3      ((t (:background "white"))))
     ;; (highlight-changes-4      ((t (:background "white"))))
     ;; (highlight-changes-5      ((t (:background "white"))))
     ;; (highlight-changes-6      ((t (:background "white"))))
     ;; (link ((t ())))
     ;; (link-visited ((t ())))
     ;; (match ((t ())))
     ;; (mode-line-highlight ((t (:inverse-video t))))
     ;; (mouse ((t (:background "black"))))
     ;; (query-replace ((t ())))
     ;; (region ((t (:inverse-video t))))
     ;; (scroll-bar ((t ())))
     ;; (secondary-selection ((t ())))
     ;; (shadow ((t ())))
     ;; (show-paren-mismatch ((t ())))
     ;; (tooltip
     ;; (underline
     ;; (variable-pitch
     ;; (veritcal-border
     ;; (widget-button
     ;; (widget-button-pressed
     ;; (widget-documentation
     ;; (widget-field
     ;; (widget-single-line-field
     ;; (yas/field-debug-face ((t (:background "black"))))
     )
   )
  )