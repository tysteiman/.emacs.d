;; configure code buffers (that extend prog-mode) to default settings
(add-hook 'prog-mode-hook 'my/configure-code-buffer)

;; add emacs-lisp-mode hooks
(add-hook 'emacs-lisp-mode-hook (lambda ()
                                  ;; set local keybinding for C-c e -> eval buffer & message
                                  (my/local-bind-keys-list '(
                                                             ("C-c e" (lambda ()
                                                                        "Evaluate current emacs lisp buffer"
                                                                        (interactive)
                                                                        (eval-buffer)
                                                                        (message "Buffer evaluated.")))
                                                             ("C-c o" (lambda ()
                                                                        "Use forward list and newline to start a new line forward from the matching list."
                                                                        (interactive)
                                                                        (forward-list)
                                                                        (newline-and-indent)))))))

;; ruby mode hooks
(add-hook 'ruby-mode-hook (lambda ()
                            (my/local-bind-keys-list '(
                                                       ;; bind C-c r r to run rubocop on the current file.
                                                       ("C-c r r" (lambda ()
                                                                    (interactive)
                                                                    (compile (concat "rubocop " (buffer-file-name)))))))))

;; bind c++-mode and c-mode hooks to switch header files easily with C-c h h
(let ((hooks '(c++-mode-hook c-mode-hook)))
  (dolist (hook hooks)
    (add-hook hook (lambda ()
                     (my/local-bind-keys-list '(("C-c h h" my/source-header-toggle)))))))
