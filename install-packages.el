(package-initialize)

(custom-set-variable 'package-selected-packages
		     (quote
		      (csv-mode yaml-mode kivy-mode php-mode flycheck company flx projectile string-inflection yasnippet-snippets which-key ivy-hydra auctex nix-mode elpy yasnippet pandoc-mode markdown-mode magit swiper counsel monokai-theme ivy exec-path-from-shell)))

(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)
