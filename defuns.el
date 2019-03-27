;; defuns
(defun my/new-line-below ()
  "Create a new indented line below the current line."
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

(defun my/bind-keys-list (keys)
  "Bind keys based on a passed list (see keys.el)"
  (dolist (key keys)
    (let ((binding (car key))
          (command (car (cdr key))))
      (global-set-key (kbd binding) command))))
