(setq package-archives '(("melpa" . "https://stable.melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(package-refresh-contents)

;; auto install packages
(dolist (package '(
                   magit
                   company
                   projectile
                   helm
                   helm-projectile
                   helm-swoop
                   window-numbering
                   ace-jump-mode
                   rainbow-delimiters
                   doom-themes
                   ))
  (unless (package-installed-p package)
    (package-install package)))
