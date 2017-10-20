
(defun user-emacs-lisp-mode-hook ()
 (message "user-lisp-mode-hook")
 (paredit-mode))


(add-hook 'emacs-lisp-mode-hook 'user-emacs-lisp-mode-hook)


