;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; custom file
(setq custom-file "~/.emacs-custom.el")
(when (file-exists-p custom-file)
  (load-file custom-file))

(load-file "~/.emacs.d/packages.el")
(load-file "~/.emacs.d/config.el")
(load-file "~/.emacs.d/defuns.el")
(load-file "~/.emacs.d/keys.el")
(load-file "~/.emacs.d/hooks.el")

;; load any local config we don't want in our repo
(let ((local "~/local.el"))
  (when (file-exists-p local)
    (load-file local)))

;; puts
(put 'narrow-to-region 'disabled nil)
