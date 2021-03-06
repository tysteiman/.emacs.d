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

(defun my/source-header-toggle ()
  "Switch from .c(pp) to its cooresponding .h file"
  (interactive)
  (let ((file buffer-file-name))
    (when file
      (let* ((split (split-string file "\\."))
             (ext (car (last split)))
             (target (if (string-match "^c$\\|^cpp$" ext) ".h" ".c"))
             (joined-target (concat (car split) (if (string= target ".h")
                                                    target
                                                  (if (and
                                                       (string= target ".c")
                                                       (file-exists-p (concat (car split) ".c")))
                                                      target
                                                    ".cpp")))))
        (if (file-exists-p joined-target)
            (find-file joined-target)
          (message (format "File not found: %s" joined-target)))))))
