;; set some keybindings
(my/bind-keys-list '(
                     ("C-c m s"   magit-status)
                     ("C-c m b"   magit-blame)
                     ("C-x C-b"   ibuffer)
                     ("C-c a j"   ace-jump-char-mode)
                     ("C-j"       emmet-expand-line)
                     ("C-c h f"   browse-url-of-file)
                     ;; helm bindings
                     ("C-x C-f"   helm-find-files)
                     ("C-x b"     helm-buffers-list)
                     ("M-x"       helm-M-x)
                     ("C-c s s"   helm-swoop)
                     ("C-c h i"   helm-imenu)
                     ("C-c h t"   helm-etags-select)
                     ;; custom defun bindings
                     ("C-o"       my/new-line-below)
                     ("C-c C-o l"   (lambda ()
                                      "Open local.el file"
                                      (interactive)
                                      (find-file "~/.emacs.d/local.el")))
                     ))

(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
