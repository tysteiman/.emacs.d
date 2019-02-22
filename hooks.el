;; add some prog mode hooks -- these will only be called when in "code" buffers.
(add-hook 'prog-mode-hook (lambda ()
                            ;; show line numbers
                            (linum-mode)
                            ;; show trailing whitespace
                            (setq-local show-trailing-whitespace t)
                            ;; use rainbow delimiters
                            (rainbow-delimiters-mode)
                            ;; hl the current line
                            (hl-line-mode)
                            ;; turn on diff highlighting in margin
                            (diff-hl-mode)
                            ))
