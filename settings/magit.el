(require 'magit)

(setq magit-push-always-verify nil
      git-commit-summary-max-length 80)

(defun magit-merge-no-ff (revision)
  "Merge REVISION into the current 'HEAD'; leave changes uncommitted.
With a prefix-arg, the merge will be squashed.
\('git merge --no-commit [--squash|--no-ff] REVISION')."
  (interactive
   (list (magit-read-rev "Merge (Manually)" (magit-default-rev))))
  (if revision
      (apply 'magit-run-git
             "merge"
             (magit-rev-to-git revision)
             '("--no-ff"))))

(defun magit-prune-origin (&optional arg)
  (interactive)
  (magit-run-git-async "remote" "prune" "origin"))

(defun magit-remote-update (&optional arg)
  (interactive)
  (magit-run-git-async "remote" "update"))

(defun magit-clean-local-branches (&optional arg)
  (interactive)
  (shell-command "git branch | grep -v develop | grep -v master | xargs git branch -d"))

(defun magit-merge-develop (&optional arg)
  (interactive)
  (magit-run-git "merge" "origin/develop"))

(defun magit-merge-master (&optional arg)
  (interactive)
  (magit-run-git "merge" "--no-edit" "--ff-only" "origin/master"))

(defun magit-push-quickly-set-upstream (&optional args)
  "Push the current branch to some remote.
When the Git variable `magit.pushRemote' is set, then push to
that remote.  If that variable is undefined or the remote does
not exist, then push to \"origin\".  If that also doesn't exist
then raise an error.  The local branch is pushed to the remote
branch with the same name."
  (interactive (list (magit-push-arguments)))
  (-if-let (branch (magit-get-current-branch))
      (-if-let (remote (or (magit-remote-p (magit-get "magit.pushRemote"))
                           (magit-remote-p "origin")))
          (magit-run-git-async "push" "--set-upstream" "-v" args remote branch)
        (user-error "Cannot determine remote to push to"))
    (user-error "No branch is checked out")))

(setq magit-mode-map
      (let ((map (make-keymap)))
        (suppress-keymap map t)
        (define-key map "\t"    'magit-section-toggle)
        (define-key map [C-tab] 'magit-section-cycle)
        (define-key map [M-tab] 'magit-section-cycle-diffs)
        (define-key map [s-tab] 'magit-section-cycle-global)
        (define-key map "^"    'magit-section-up)
        (define-key map "n"    'magit-section-forward)
        (define-key map "p"    'magit-section-backward)
        (define-key map "\M-n" 'magit-section-forward-sibling)
        (define-key map "\M-p" 'magit-section-backward-sibling)
        (define-key map "+"    'magit-diff-more-context)
        (define-key map "-"    'magit-diff-less-context)
        (define-key map "0"    'magit-diff-default-context)
        (define-key map "1"    'magit-section-show-level-1)
        (define-key map "2"    'magit-section-show-level-2)
        (define-key map "3"    'magit-section-show-level-3)
        (define-key map "4"    'magit-section-show-level-4)
        (define-key map "\M-1" 'magit-section-show-level-1-all)
        (define-key map "\M-2" 'magit-section-show-level-2-all)
        (define-key map "\M-3" 'magit-section-show-level-3-all)
        (define-key map "\M-4" 'magit-section-show-level-4-all)
        (define-key map "g" 'magit-refresh)
        (define-key map "G" 'magit-refresh-all)
        (define-key map "q" 'magit-mode-bury-buffer)
        (define-key map "$" 'magit-process-buffer)
        (define-key map "a" 'magit-cherry-apply)
        (define-key map "A" 'magit-cherry-pick-popup)
        ;; (define-key map "b" 'magit-branch-popup)
        ;; (define-key map "B" 'magit-bisect-popup)
        (define-key map "c" 'magit-commit)
        ;; (define-key map "c" 'magit-commit-popup)
        (define-key map "d" 'magit-diff-dwim)
        ;; (define-key map "d" 'magit-diff-popup)
        (define-key map "D" 'magit-diff)
        (define-key map "h" 'magit-dispatch-popup)
        (define-key map "?" 'magit-dispatch-popup)
        (define-key map "\C-c\C-c" 'magit-dispatch-popup)
        (define-key map "\C-c\C-e" 'magit-dispatch-popup)
        (define-key map "e" 'magit-ediff-dwim)
        (define-key map "E" 'magit-ediff-popup)
        (define-key map "f" 'magit-fetch-popup)
        (define-key map "F" 'magit-pull-popup)
        (define-key map "i" 'magit-gitignore)
        (define-key map "I" 'magit-gitignore-locally)
        (define-key map "k" 'magit-delete-thing)
        (define-key map "K" 'magit-file-untrack)
        ;; (define-key map "l" 'magit-log-popup)
        ;; (define-key map "L" 'magit-log-refresh-popup)
        (define-key map "m" 'magit-merge-popup)
        (define-key map "M" 'magit-remote-popup)
        (define-key map "o" 'magit-submodule-popup)
        ;; (define-key map "P" 'magit-push-popup)
        ;; (define-key map "r" 'magit-rebase-popup)
        ;; (define-key map "t" 'magit-tag-popup)
        (define-key map "T" 'magit-notes-popup)
        (define-key map "\r"       'magit-visit-thing)
        (define-key map [C-return] 'magit-visit-thing)
        (define-key map [M-return] 'magit-dired-jump)
        (define-key map "\s"       'magit-diff-show-or-scroll-up)
        (define-key map "\d"       'magit-diff-show-or-scroll-down)
        (define-key map "s" 'magit-stage-file)
        (define-key map "S" 'magit-stage-modified)
        (define-key map "u" 'magit-unstage-file)
        (define-key map "U" 'magit-reset-index)
        (define-key map "v" 'magit-revert-no-commit)
        (define-key map "V" 'magit-revert-popup)
        (define-key map "w" 'magit-am-popup)
        (define-key map "W" 'magit-patch-popup)
        (define-key map "x" 'magit-reset)
        (define-key map "y" 'magit-show-refs-popup)
        (define-key map "Y" 'magit-cherry)
        (define-key map "z" 'magit-stash-popup)
        (define-key map "Z" 'magit-stash-popup)
        (define-key map ":" 'magit-git-command)
        (define-key map "!" 'magit-run-popup)
        (define-key map "\C-xa"  'magit-add-change-log-entry)
        (define-key map "\C-x4a" 'magit-add-change-log-entry-other-window)
        (define-key map "\C-w"   'magit-copy-as-kill)
        (define-key map "\M-w"   'magit-copy-buffer-thing-as-kill)
        (define-key map [remap evil-previous-line] 'evil-previous-visual-line)
        (define-key map [remap evil-next-line] 'evil-next-visual-line)
        ;; my additions
        (define-key map (kbd "V") 'magit-show-refs-popup)
        (define-key map (kbd "J") 'magit-prune-origin)
        (define-key map (kbd "Y") 'magit-push-popup)
        (define-key map (kbd "H") 'magit-merge-develop)
        (define-key map (kbd "Q") 'magit-merge-master)
        (define-key map (kbd "N") 'magit-clean-local-branches)
        ;; my changes
        (define-key map (kbd "!") 'magit-shell-command)
        (define-key map (kbd "t") 'magit-tag)
        (define-key map "r" 'magit-rebase-popup)
        (define-key map "R" 'magit-rebase-popup)
        (define-key map (kbd "P") 'magit-push-quickly-set-upstream)
        (define-key map (kbd "f") 'magit-fetch-current)
        (define-key map (kbd "b") 'magit-checkout)
        (define-key map (kbd "B") 'magit-branch-and-checkout)
        (define-key map (kbd "F") 'magit-remote-update)
        (define-key map (kbd "l") 'magit-log-current)
        (define-key map (kbd "L") 'magit-log-all)
        map))

(setq magit-status-mode-map
      (let ((map (make-sparse-keymap)))
        (set-keymap-parent map magit-mode-map)
        ;; my changes
        (define-key map (kbd "b") 'magit-checkout)
        (define-key map (kbd "B") 'magit-branch-and-checkout)
        ;; (define-key map (kbd "m") 'magit-merge-no-ff)
        (define-key map (kbd "M") 'magit-merge)
        (define-key map (kbd "z") 'magit-stash)
        (define-key map "r" 'magit-rebase-popup)
        map))

(setq magit-display-buffer-function
      (lambda (buffer)
        (display-buffer
         buffer
         (cond ((and (derived-mode-p 'magit-mode)
                     (eq (with-current-buffer buffer major-mode)
                         'magit-status-mode))
                nil)
               ((memq (with-current-buffer buffer major-mode)
                      '(magit-process-mode
                        magit-revision-mode
                        magit-diff-mode
                        magit-stash-mode))
                nil)
               (t
                '(display-buffer-same-window))))))
