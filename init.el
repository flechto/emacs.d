
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'package-archives
	     '("melpa-stable" . "https://stable.melpa.org/packages/") t)


(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/") t)

(package-refresh-contents)

(defvar packages-to-install
  '(paredit
    helm
    projectile
    helm-projectile
    gradle-mode
    groovy-mode
    yaml-mode
    web-mode
    clojure-mode
    cider))

(dolist (package packages-to-install)
  (unless (package-installed-p package)
    (package-install package)))



(add-to-list 'load-path "~/.emacs.d/customizations")

(load "ui")
(load "el")
(load "java")
(load "clj")

(message "Hello World!!")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(eclim-eclipse-dirs (quote ("~/.emacs.d/eclipse.d")))
 '(eclim-executable "~/.emacs.d/eclipse.d/eclim")
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (web-mode helm-projectile yaml-mode projectile paredit helm groovy-mode gradle-mode company-emacs-eclim))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'upcase-region 'disabled nil)
