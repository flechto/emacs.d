(load-theme 'misterioso)

(defalias 'yes-or-no-p 'y-or-n-p)

(helm-mode)
(projectile-mode)
;; (helm-projectile-on)

(global-set-key (kbd "M-x") 'helm-M-x)

