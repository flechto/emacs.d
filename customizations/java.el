(defun user-java-mode-hook ()
  (gradle-mode))

(add-hook 'java-mode-hook 'user-java-mode-hook)
