;; configure code buffers (that extend prog-mode) to default settings
(add-hook 'prog-mode-hook 'my/configure-code-buffer)

;; add emacs-lisp-mode hooks
(add-hook 'emacs-lisp-mode-hook (lambda ()
                                  ;; set local keybinding for C-c e -> eval buffer & message
                                  (my/local-bind-keys-list '(
                                                             ("C-c e" (lambda ()
                                                                        (interactive)
                                                                        (eval-buffer)
                                                                        (message "Buffer evaluated.")))))))

;; ruby mode hooks
(add-hook 'ruby-mode-hook (lambda ()
                            (my/local-bind-keys-list '(
                                                       ;; bind C-c r r to run rubocop on the current file.
                                                       ("C-c r r" (lambda ()
                                                                    (interactive)
                                                                    (compile (concat "rubocop " (buffer-file-name)))))))))
