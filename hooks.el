;; configure code buffers (that extend prog-mode) to default settings
(add-hook 'prog-mode-hook 'my/configure-code-buffer)

;; add emacs-lisp-mode hooks
(add-hook 'emacs-lisp-mode-hook (lambda ()
                                  ;; set local keybinding for C-c e -> eval buffer & message
                                  (local-set-key (kbd "C-c e") (lambda ()
                                                                 (interactive)
                                                                 (eval-buffer)
                                                                 (message "Buffer evaluated.")))))
