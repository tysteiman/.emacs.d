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

(defun my/configure-code-buffer ()
  "Default configuration for code buffers"
  (interactive)
  ;; show line numbers
  (linum-mode)
  ;; show trailing whitespace
  (setq-local show-trailing-whitespace t)
  ;; use rainbow delimiters
  (rainbow-delimiters-mode)
  ;; hl the current line
  (hl-line-mode))
