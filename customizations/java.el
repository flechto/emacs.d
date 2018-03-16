(setq eclimd-autostart t)

(custom-set-variables
 '(eclim-eclipse-dirs '("~/.emacs.d/eclipse.d"))
 '(eclim-executable "~/.emacs.d/eclipse.d/eclim"))

(defun gradle-boot-run ()
  (interactive)
  (gradle-execute "bootRun")
  (with-current-buffer "*compilation*"
    (rename-buffer "*boot run*")))

(defun user-java-mode-hook ()
  (message "JAVA")
  (gradle-mode)
  (global-set-key (kbd "C-c C-r") 'gradle-boot-run)
  (projectile-mode 1)
  (eclim-mode t)
  (company-emacs-eclim-setup)
  (company-mode t))

(add-hook 'java-mode-hook 'user-java-mode-hook)

