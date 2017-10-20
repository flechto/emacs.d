(setq eclimd-autostart t)

(custom-set-variables
 '(eclim-eclipse-dirs '("~/.emacs.d/eclipse.d"))
 '(eclim-executable "~/.emacs.d/eclipse.d/eclim"))

(defun user-java-mode-hook ()
  (gradle-mode t)
  (projectile-mode t)
  (eclim-mode t)
  (company-emacs-eclim-setup)
  (company-mode t))

(add-hook 'java-mode-hook 'user-java-mode-hook)
