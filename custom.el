(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-mode-hook
   (quote
    (preview-mode-setup turn-on-reftex LaTeX-math-mode flyspell-mode visual-line-mode)))
 '(TeX-auto-save t)
 '(TeX-engine (quote luatex))
 '(TeX-parse-self t)
 '(TeX-source-correlate-mode t)
 '(ansi-term-color-vector
   [unspecified "#f9f5d7" "#9d0006" "#79740e" "#b57614" "#076678" "#8f3f71" "#076678" "#504945"] t)
 '(before-save-hook (quote (delete-trailing-whitespace)))
 '(column-number-mode t)
 '(counsel-projectile-mode t nil (counsel-projectile))
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("61003d455ba1bad9a3bf8be7342e848ca3febe899319e95a9dc3d804d9697608" "93f9654f91d31e9a9ec6ea2fcffcfcab38353a9588673f2b750e591f704cd633" default)))
 '(default-input-method "french-prefix")
 '(delete-by-moving-to-trash t)
 '(delete-selection-mode t)
 '(dired-du-size-format t)
 '(dired-listing-switches "-alh")
 '(elpy-mode-hook (quote (subword-mode)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(explicit-bash-args (quote ("--noediting" "-i" "-l")))
 '(global-company-mode t)
 '(global-flycheck-mode t)
 '(global-highlight-changes-mode nil)
 '(gnutls-verify-error t)
 '(gud-pdb-command-name "python -m pdb")
 '(inhibit-startup-screen t)
 '(ivy-mode t)
 '(langtool-language-tool-jar
   "/usr/local/Cellar/languagetool/4.0/libexec/languagetool-commandline.jar" t)
 '(line-spacing nil)
 '(mac-mouse-wheel-mode t)
 '(mac-system-move-file-to-trash-use-finder t)
 '(magit-commit-arguments (quote ("--gpg-sign=5D7E1E4404878F25")))
 '(magit-log-arguments
   (quote
    ("--graph" "--color" "--decorate" "--show-signature" "-n256")))
 '(magit-repository-directories
   (quote
    (("~/.password-store" . 0)
     ("~/.emacs.d" . 0)
     ("~/Documents" . 1))))
 '(org-agenda-files (quote ("~/Documents/org")))
 '(org-capture-templates
   (quote
    (("t" "Task" entry
      (file+headline "~/Documents/org/inbox.org" "Captures")
      "* TODO %?")
     ("T" "Task with metadata" entry
      (file+headline "~/Documents/org/inbox.org" "Captures")
      "* TODO %?
  %i
  %a"))))
 '(org-default-notes-file "~/Documents/org/inbox.org")
 '(org-edit-src-content-indentation 0)
 '(org-hide-emphasis-markers t)
 '(org-lowest-priority 70)
 '(org-refile-targets (quote ((org-agenda-files :maxlevel . 3))))
 '(package-archive-priorities (quote (("melpa-stable" . 10) ("gnu" . 5) ("melpa" . 0))))
 '(package-archives
   (quote
    (("gnu" . "https://elpa.gnu.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-selected-packages
   (quote
    (langtool yaml-mode kivy-mode php-mode flycheck company flx projectile string-inflection ace-window yasnippet-snippets which-key ivy-hydra auctex nix-mode elpy yasnippet pandoc-mode markdown-mode magit swiper counsel monokai-theme ivy exec-path-from-shell)))
 '(prog-mode-hook (quote (flyspell-prog-mode prettify-symbols-mode)))
 '(projectile-global-mode t)
 '(python-shell-interpreter "jupyter")
 '(python-shell-interpreter-args "console --simple-prompt")
 '(reftex-plug-into-AUCTeX t)
 '(ring-bell-function (quote ignore))
 '(show-paren-mode t)
 '(text-mode-hook
   (quote
    (turn-on-flyspell turn-on-auto-fill text-mode-hook-identify)))
 '(tls-checktrust t)
 '(tool-bar-mode nil)
 '(tramp-syntax (quote default) nil (tramp)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 110 :family "Menlo")))))
