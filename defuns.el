;; defuns
(defun my/new-line-below ()
  "Create a new indented line below the current line."
  (interactive)
  (move-end-of-line 1)
  (newline-and-indent))

(defun my/insert-doc-line ()
  "Add an indented new line and add a * character. Used for commenting easier."
  (interactive)
  (my/new-line-below)
  (insert "*"))
