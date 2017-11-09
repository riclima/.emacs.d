;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(ansi-term-color-vector
   [unspecified "#f9f5d7" "#9d0006" "#79740e" "#b57614" "#076678" "#8f3f71" "#076678" "#504945"])
 '(compilation-message-face (quote default))
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "84fa3d838aec400453d086913cd373ce84c8b85623451331ec4cf5f68ed878c7" "4a91a64af7ff1182ed04f7453bb5a4b0c3d82148d27db699df89a5f1d449e2a4" "93f9654f91d31e9a9ec6ea2fcffcfcab38353a9588673f2b750e591f704cd633" default)))
 '(default-input-method "french-prefix")
 '(elpy-mode-hook (quote (subword-mode)))
 '(elpy-modules
   (quote
    (elpy-module-company elpy-module-eldoc elpy-module-flymake elpy-module-pyvenv elpy-module-yasnippet elpy-module-django elpy-module-sane-defaults)))
 '(fci-rule-color "#3C3D37")
 '(global-highlight-changes-mode nil)
 '(highlight-changes-colors (quote ("#FD5FF0" "#AE81FF")))
 '(highlight-tail-colors
   (quote
    (("#3C3D37" . 0)
     ("#679A01" . 20)
     ("#4BBEAE" . 30)
     ("#1DB4D0" . 50)
     ("#9A8F21" . 60)
     ("#A75B00" . 70)
     ("#F309DF" . 85)
     ("#3C3D37" . 100))))
 '(inhibit-startup-screen t)
 '(line-spacing nil)
 '(magit-commit-arguments (quote ("--gpg-sign=5D7E1E4404878F25")))
 '(magit-diff-use-overlays nil)
 '(magit-log-arguments
   (quote
    ("--graph" "--color" "--decorate" "--show-signature" "-n256")))
 '(ns-command-modifier (quote control))
 '(org-agenda-files (quote ("~/Org/")))
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
    (base16-theme ace-window yasnippet-snippets which-key ivy-hydra auctex nix-mode elpy yasnippet pandoc-mode markdown-mode magit swiper counsel monokai-theme ivy exec-path-from-shell)))
 '(pos-tip-background-color "#FFFACE")
 '(pos-tip-foreground-color "#272822")
 '(python-shell-interpreter "ipython")
 '(python-shell-interpreter-args "--simple-prompt -i")
 '(show-paren-mode t)
 '(tls-checktrust t)
 '(tool-bar-mode nil)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#F92672")
     (40 . "#CF4F1F")
     (60 . "#C26C0F")
     (80 . "#E6DB74")
     (100 . "#AB8C00")
     (120 . "#A18F00")
     (140 . "#989200")
     (160 . "#8E9500")
     (180 . "#A6E22E")
     (200 . "#729A1E")
     (220 . "#609C3C")
     (240 . "#4E9D5B")
     (260 . "#3C9F79")
     (280 . "#A1EFE4")
     (300 . "#299BA6")
     (320 . "#2896B5")
     (340 . "#2790C3")
     (360 . "#66D9EF"))))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (unspecified "#272822" "#3C3D37" "#F70057" "#F92672" "#86C30D" "#A6E22E" "#BEB244" "#E6DB74" "#40CAE4" "#66D9EF" "#FB35EA" "#FD5FF0" "#74DBCD" "#A1EFE4" "#F8F8F2" "#F8F8F0")))

;; Setup the environment
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))


;; Security
(let ((trustfile
       (replace-regexp-in-string
        "\\\\" "/"
        (replace-regexp-in-string
         "\n" ""
         (shell-command-to-string "python3 -m certifi")))))
  (setq tls-program
        (list
         (format "gnutls-cli%s --x509cafile %s -p %%p %%h"
                 (if (eq window-system 'w32) ".exe" "") trustfile)))
  (setq gnutls-verify-error t)
  (setq gnutls-trustfiles (list trustfile)))


;; Install packages if needed
(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)


;; Emacs config
(show-paren-mode)
(column-number-mode)
(add-to-list 'auto-mode-alist '("\\.log\\'" . auto-revert-mode))


;; Ivy
(ivy-mode 1)
(setq ivy-re-builders-alist
      '((t . ivy--regex-plus)))
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


;; ace-window
(global-set-key (kbd "C-x o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))


;; Magit
(global-magit-file-mode)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x M-g") 'magit-dispatch-popup)


;; Elpy
(elpy-enable)


;; Yasnippets
(yas-global-mode t)


;; Latex editing
(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)

(add-hook 'LaTeX-mode-hook 'turn-on-reftex)
(setq reftex-plug-into-AUCTeX t)


;; Which-key
(which-key-mode)


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 110 :family "SF Mono")))))


(server-start)
(put 'downcase-region 'disabled nil)
