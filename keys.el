;; set some keybindings
(dolist (key '(
               ("C-c m s" magit-status)
               ("C-x C-b" ibuffer)
               ("C-c a j" ace-jump-char-mode)
               ;; helm bindings
               ("C-x C-f" helm-find-files)
               ("C-x b" helm-buffers-list)
               ("M-x" helm-M-x)
               ("C-c s s" helm-swoop)
               ("C-c h i" helm-imenu)
               ;; custom defun bindings
               ("C-o" my/new-line-below)
               ))
  (let ((binding (car key))
        (command (car (cdr key))))
    (global-set-key (kbd binding) command)))

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
