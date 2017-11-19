(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
   [unspecified "#f9f5d7" "#9d0006" "#79740e" "#b57614" "#076678" "#8f3f71" "#076678" "#504945"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (monokai)))
 '(custom-file "/Users/riclima/.emacs.d/custom.el")
 '(custom-safe-themes
   (quote
    ("36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "12670281275ea7c1b42d0a548a584e23b9c4e1d2dabb747fd5e2d692bcd0d39b" "8cf1002c7f805360115700144c0031b9cfa4d03edc6a0f38718cef7b7cabe382" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "84fa3d838aec400453d086913cd373ce84c8b85623451331ec4cf5f68ed878c7" "4a91a64af7ff1182ed04f7453bb5a4b0c3d82148d27db699df89a5f1d449e2a4" "93f9654f91d31e9a9ec6ea2fcffcfcab38353a9588673f2b750e591f704cd633" default)))
 '(default-input-method "french-prefix")
 '(elpy-mode-hook (quote (subword-mode)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(global-highlight-changes-mode nil)
 '(inhibit-startup-screen t)
 '(line-spacing nil)
 '(magit-commit-arguments (quote ("--gpg-sign=5D7E1E4404878F25")))
 '(magit-log-arguments
   (quote
    ("--graph" "--color" "--decorate" "--show-signature" "-n256")))
 '(magit-repository-directories
   (quote
    (("~/.emacs.d" . 0)
     ("~/Org" . 0)
     ("~/SourceCode" . 1))))
 '(ns-command-modifier (quote control))
 '(org-agenda-files (quote ("~/Org/")))
 '(org-capture-templates
   (quote
    (("t" "Task" entry
      (file+headline "~/Org/inbox.org" "* Tasks")
      "* TODO %?\\n")
     ("T" "Task With Link" entry
      (file+headline "~/Org/inbox.org" "* Tasks")
      "* TODO %?\\n"))))
 '(org-default-notes-file "~/Org/inbox.org")
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
    (string-inflection base16-theme ace-window yasnippet-snippets which-key ivy-hydra auctex nix-mode elpy yasnippet pandoc-mode markdown-mode magit swiper counsel monokai-theme ivy exec-path-from-shell)))
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "--simple-prompt -i")
 '(show-paren-mode t)
 '(tls-checktrust t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 110 :family "SF Mono")))))
