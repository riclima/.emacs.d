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
 '(custom-enabled-themes (quote (monokai)))
 '(custom-safe-themes
   (quote
    ("36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "12670281275ea7c1b42d0a548a584e23b9c4e1d2dabb747fd5e2d692bcd0d39b" "8cf1002c7f805360115700144c0031b9cfa4d03edc6a0f38718cef7b7cabe382" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "84fa3d838aec400453d086913cd373ce84c8b85623451331ec4cf5f68ed878c7" "4a91a64af7ff1182ed04f7453bb5a4b0c3d82148d27db699df89a5f1d449e2a4" "93f9654f91d31e9a9ec6ea2fcffcfcab38353a9588673f2b750e591f704cd633" default)))
 '(default-frame-alist (quote ((width . 120) (height . 48))))
 '(default-input-method "french-prefix")
 '(delete-by-moving-to-trash t)
 '(dired-du-size-format t)
 '(elpy-mode-hook (quote (subword-mode)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(explicit-bash-args (quote ("--noediting" "-i" "-l")))
 '(global-highlight-changes-mode nil)
 '(gud-pdb-command-name "python -m pdb")
 '(inhibit-startup-screen t)
 '(ivy-mode t)
 '(langtool-language-tool-jar
   "/usr/local/Cellar/languagetool/3.9/libexec/languagetool.jar")
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
 '(ns-command-modifier (quote control))
 '(org-agenda-files (quote ("~/Org/")))
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
    (dired-du langtool counsel-projectile flx projectile string-inflection base16-theme ace-window yasnippet-snippets which-key ivy-hydra auctex nix-mode elpy yasnippet pandoc-mode markdown-mode magit swiper counsel monokai-theme ivy exec-path-from-shell)))
 '(projectile-enable-caching t)
 '(projectile-global-mode t)
 '(python-shell-interpreter-args "-i")
 '(reftex-plug-into-AUCTeX t)
 '(show-paren-mode t)
 '(tls-checktrust t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 110 :family "Menlo")))))
