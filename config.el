;; funcalls
(tool-bar-mode 0)
(menu-bar-mode 0)
(column-number-mode t)
(scroll-bar-mode 0)
(show-paren-mode)
(display-time-mode)
(auto-revert-mode t)

;; custom package funcalls
(global-company-mode t)
(projectile-mode)
(helm-projectile-on)
(window-numbering-mode t)

;; setq
(setq make-backup-files nil)
(setq ns-pop-up-frames nil)
(setq vc-follow-symlinks t)
(setq tags-revert-without-query t)
(setq dired-listing-switches "-lah")
(setq linum-format " %d ")
(setq-default truncate-lines t)
(setq-default indent-tabs-mode nil)
(setq-default c-basic-offset 4)
