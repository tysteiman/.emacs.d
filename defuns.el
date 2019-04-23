;; defuns
(defun my/new-line-below ()
  "Create a new indented line below the current line."
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

(defun my/bind-keys-list (keys &optional local)
  "Bind keys based on a passed list (see keys.el). If &OPTIONAL `local' is set, only bind to local buffer"
  (dolist (key keys)
    (let ((binding (car key))
          (command (car (cdr key)))
          (fun (if local
                   'local-set-key
                 'global-set-key)))
      (funcall fun (kbd binding) command))))

(defun my/local-bind-keys-list (keys)
  "Bind keys to a specific buffer, using `my/bind-keys-list' passing t to LOCAL"
  (my/bind-keys-list keys t))

(defun my/install-packages (packages)
  "Install a list of packages if they're not already installed."
  (dolist (package packages)
    (unless (package-installed-p package)
      (package-install package))))

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

(defun my/open-local-file ()
  "Open local.el file"
  (interactive)
  (find-file "~/.emacs.d/local.el"))

(defun my/toggle-evil-mode ()
  "Switch from evil mode to non evil mode"
  (interactive)
  (let ((evil? (if (boundp 'evil-mode) evil-mode nil)))
    (evil-mode (if evil? 0 t))
    (if evil?
        ;; switching from evil to non-evil
        (progn
          (linum-relative-mode 0)
          (linum-mode)
          (message "Evil mode off"))
      ;; switching from non-evil to evil
      (progn
        (linum-relative-mode t)
        (message "Evil mode on")))))
