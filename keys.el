;; set some keybindings
(dolist (key '(
               ("C-c m s"   magit-status)
               ("C-c m b"   magit-blame)
               ("C-x C-b"   ibuffer)
               ("C-c a j"   ace-jump-char-mode)
               ("C-c e j"   emmet-expand-line)
               ("C-c h f"   browse-url-of-file)
               ;; helm bindings
               ("C-x C-f"   helm-find-files)
               ("C-x b"     helm-buffers-list)
               ("M-x"       helm-M-x)
               ("C-c s s"   helm-swoop)
               ("C-c h i"   helm-imenu)
               ("C-c h t"   helm-etags-select)
               ;; spotify bindings
               ("C-c s p n" spotify-next)
               ("C-c s p p" spotify-playpause)
               ("C-c s p q" spotify-quit)
               ;; custom defun bindings
               ("C-o"       my/new-line-below)
               ("C-*"       my/insert-doc-line)
               ))
  (let ((binding (car key))
        (command (car (cdr key))))
    (global-set-key (kbd binding) command)))

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
