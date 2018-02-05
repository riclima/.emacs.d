(package-initialize)


;; Environment
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; Custom
(customize-set-variable 'custom-file "~/.emacs.d/custom.el")
(load custom-file)


;; Package Sync
;; Note: custom-set-variables needs to have run for this to work
;; (otherwise package-selected-packages won't be set).
(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)


;; General
(show-paren-mode)
(column-number-mode)
(add-to-list 'auto-mode-alist '("\\.log\\'" . auto-revert-mode))
(put 'downcase-region 'disabled nil)


;; Ivy
;; (setq ivy-re-builders-alist
;;       '((t . ivy--regex-fuzzy)))
(setq ivy-use-virtual-buffers t)
(setq ivy-count-format "(%d/%d) ")
(global-set-key (kbd "C-s") 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
;; (global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(global-set-key (kbd "C-c C-r") 'ivy-resume)


;; Org
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)


;; Magit
(global-magit-file-mode)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)


;; Elpy
(elpy-enable)
(setenv "WORKON_HOME" "~/.local/share/virtualenvs")


;; Yasnippets
(yas-global-mode)


;; Which Key
(which-key-mode)


;; Server
(server-start)


;; Improve performance of long lines
(setq-default bidi-display-reordering nil)


;; Enable disabled commands
(put 'scroll-left 'disabled nil)
(put 'upcase-region 'disabled nil)


;; Spelling and grammar checking
(customize-set-variable 'langtool-language-tool-jar "/usr/local/Cellar/languagetool/4.0/libexec/languagetool-commandline.jar")
