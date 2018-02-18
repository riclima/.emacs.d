(package-initialize)

(load "~/.emacs.d/custom.el")

(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)
