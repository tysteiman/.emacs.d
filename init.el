;; custom file
(setq custom-file "~/.emacs.d/custom.el")

;; load our required files
(let ((files `(
               custom
               defuns
               packages
               config
               keys
               hooks
               local
               ,(if (window-system) 'gui 'term)
               )))
  (dolist (file files)
    (let ((full (format "~/.emacs.d/%s.el" file)))
      (when (file-exists-p full)
        (load-file full)))))

;; puts
(put 'narrow-to-region 'disabled nil)
(put 'erase-buffer 'disabled nil)
