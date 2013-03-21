;; (evil-mode nil)

;; (setq evil-ex-search-vim-style-regexp t
;;       evil-leader/in-all-states t
;;       evil-leader/leader " "
;;       evil-mode-line-format nil
;;       evil-move-cursor-back t
;;       evil-search-module 'evil-search)

;; (setq-default evil-shift-width 2)

;; (define-key evil-motion-state-map evil-leader/leader evil-leader/map)

;; (loop for (mode . state) in '((inferior-emacs-lisp-mode      . emacs)
;;                               (comint-mode                   . emacs)
;;                               (shell-mode                    . emacs)
;;                               (magit-show-branches-mode      . emacs)
;;                               (helm-mode                     . emacs)
;;                               (erc-mode                      . emacs)
;;                               (magit-branch-manager-mode     . emacs)
;;                               (magit-log-edit-mode           . emacs)
;;                               (sql-interactive-mode          . emacs))
;;       do (evil-set-initial-state mode state))

;; ;; key bindings
;; (fill-keymap evil-normal-state-map
;;              "SPC"   'ace-jump-char-mode
;;              "C-c +" 'evil-numbers/inc-at-pt
;;              "C-c -" 'evil-numbers/dec-at-pt)

;; (fill-keymap evil-window-map
;;              "u"   'winner-undo
;;              "C-r" 'winner-redo
;;              "M-h" 'buf-move-left
;;              "M-j" 'buf-move-down
;;              "M-k" 'buf-move-up
;;              "M-l" 'buf-move-right)

;; ;; evil leader
;; (evil-leader/set-key
;;   "a" 'ack
;;   "b" 'ido-switch-buffer
;;   "B" 'ido-switch-buffer-other-window
;;   "d" 'dired-jump
;;   "D" 'toggle-current-window-dedication
;;   "e" 'er/expand-region
;;   "E" 'eshell
;;   "f" 'ido-find-file
;;   "F" 'ido-find-file-other-window
;;   "g" 'magit-status
;;   "k" 'kill-this-buffer
;;   "K" 'kill-buffer-and-window
;;   "m" 'bookmark-ido-find-file
;;   "o" 'browse-url-of-file
;;   "r" 'recentf-ido-find-file
;;   "R" 'find-file-in-repository
;;   "s" 'rspec-verify-single
;;   "t" 'ido-goto-symbol
;;   "v" 'rspec-verify
;;   "w" 'evil-write)

;; ;; compilation mode
;; (add-hook 'compilation-mode-hook '(lambda ()
;;                                     (local-unset-key "h")
;;                                     (local-unset-key "0")))

;; ;; org mode
;; (evil-declare-key 'normal org-mode-map
;;                   "za"        'org-cycle
;;                   "zA"        'org-shifttab
;;                   "zc"        'hide-subtree
;;                   "zC"        'org-hide-block-all
;;                   "zm"        'hide-body
;;                   "zo"        'show-subtree
;;                   "zO"        'show-all
;;                   "zr"        'show-all
;;                   (kbd "RET") 'org-open-at-point
;;                   (kbd "M-j") 'org-shiftleft
;;                   (kbd "M-k") 'org-shiftright
;;                   (kbd "M-H") 'org-metaleft
;;                   (kbd "M-J") 'org-metadown
;;                   (kbd "M-K") 'org-metaup
;;                   (kbd "M-L") 'org-metaright)

;; (evil-declare-key 'insert org-mode-map
;;                   (kbd "M-j") 'org-shiftleft
;;                   (kbd "M-k") 'org-shiftright
;;                   (kbd "M-H") 'org-metaleft
;;                   (kbd "M-J") 'org-metadown
;;                   (kbd "M-K") 'org-metaup
;;                   (kbd "M-L") 'org-metaright)

;; ;; eshell mode
;; (defun eshell-evil-keys ()
;;      (define-key eshell-mode-map (kbd "C-w h") 'windmove-left)
;;      (define-key eshell-mode-map (kbd "C-w C-h") 'windmove-left)
;;      (define-key eshell-mode-map (kbd "C-w l") 'windmove-right)
;;      (define-key eshell-mode-map (kbd "C-w C-l") 'windmove-right)
;;      (define-key eshell-mode-map (kbd "C-w j") 'windmove-down)
;;      (define-key eshell-mode-map (kbd "C-w C-j") 'windmove-down)
;;      (define-key eshell-mode-map (kbd "C-w C-k") 'windmove-up)
;;      (define-key eshell-mode-map (kbd "C-w k") 'windmove-up)
;;      (define-key eshell-mode-map (kbd "C-d") 'bury-buffer))

;; (add-hook 'eshell-mode-hook 'eshell-evil-keys)
