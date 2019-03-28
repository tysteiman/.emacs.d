;; add some prog mode hooks -- these will only be called when in "code" buffers.
(add-hook 'prog-mode-hook 'my/configure-code-buffer)

;; rjsx (react) mode hooks
(add-hook 'rjsx-mode-hook (lambda ()
                            ;; we want to bind our tag navigate key to helm-etags
                            ;; since this works way better than the default
                            ;; support for this mode (can never find tags)
                            (local-set-key (kbd "M-.") 'helm-etags-select)))

;; js2 mode hooks
(add-hook 'js2-mode-hook (lambda ()
                           ;; we want to bind our tag navigate key to helm-etags
                           ;; since this works way better than the default
                           ;; support for this mode (can never find tags)
                           (local-set-key (kbd "M-.") 'helm-etags-select)))

;; javascript mode hooks
(add-hook 'javascript-mode-hook (lambda ()
                                  ;; we want to bind our tag navigate key to helm-etags
                                  ;; since this works way better than the default
                                  ;; support for this mode (can never find tags)
                                  (local-set-key (kbd "M-.") 'helm-etags-select)))

;; slim mode -- use default code buffer configuration
(add-hook 'slim-mode-hook 'my/configure-code-buffer)
