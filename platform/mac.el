(message "loading mac specific settings")

(setq shell-file-name "bash")
(setenv "SHELL" shell-file-name)
(setq exec-path (cons "/opt/local/sbin" exec-path))
(setq exec-path (cons "/opt/local/bin" exec-path))
(setq exec-path (cons "/opt/local/lib/postgresql90/bin" exec-path))
(setq exec-path (cons "/usr/local/git/bin" exec-path))
(setq exec-path (cons "/usr/texbin" exec-path))
(setq exec-path (cons "/usr/local/bin" exec-path))
(setq exec-path (cons "/Users/john/C2/scala" exec-path))
(setq exec-path (cons "/Users/john/C2/scala/scala/bin" exec-path))
(setq exec-path (cons "/Users/john/C2/clojure/bin" exec-path))
(setenv "PATH" (concat "/usr/local/git/bin:" (getenv "PATH")))
(setenv "PATH" (concat "/usr/texbin:" (getenv "PATH")))
(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
(setenv "PATH" (concat (getenv "PATH") ":/Users/john/C2/scala/scala/bin"))
(setenv "PATH" (concat (getenv "PATH") ":/Users/john/C2/scala"))
(setenv "PATH" (concat (getenv "PATH") ":/Users/john/C2/clojure/bin"))

;;
;; someone's blog on copy and pasting between mac and emacs
;;
(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)
