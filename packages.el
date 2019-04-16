(package-initialize)

(setq package-archives '(("melpa" . "https://stable.melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(package-refresh-contents)

(my/install-packages '(
                       magit
                       company
                       projectile
                       helm
                       helm-projectile
                       helm-swoop
                       window-numbering
                       ace-jump-mode
                       rainbow-delimiters
                       helm-etags-plus
                       emmet-mode
                       ))
