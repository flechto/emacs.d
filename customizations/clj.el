(defun user-clojure-mode-hook ()
  (paredit-mode))

(add-hook 'clojure-mode-hook 'user-clojure-mode-hook)
