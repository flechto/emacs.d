
(defun user-emacs-lisp-mode-hook ()
  (company-mode)
  (paredit-mode))


(add-hook 'emacs-lisp-mode-hook 'user-emacs-lisp-mode-hook)


