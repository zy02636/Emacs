;;;;configure plugins

;;configure ----- python -----
(load-file "~/.emacs.d/emacs-for-python/epy-init.el")
(add-to-list 'load-path "~/.emacs.d/emacs-for-python/") ;; tell where to load the various files
(require 'epy-setup)      ;; It will setup other loads, it is required!
(require 'epy-python)     ;; If you want the python facilities [optional]
(require 'epy-completion) ;; If you want the autocompletion settings [optional]
(require 'epy-editing)    ;; For configurations related to editing [optional]
(require 'epy-bindings)   ;; For my suggested keybindings [optional]
(require 'epy-nose)       ;; For nose integration
;;configure the flymake checker
(epy-setup-checker "pyflakes %f")
;;adding the django snippets
(epy-django-snippets)
;;ipython intergration
(epy-setup-ipython)
;;line highlighting
;;(global-hl-line-mode t)
;;(set-face-background 'hl-line "#eedd82");;change the color that you like
                                      ;;for a list of colors: http://raebear.net/comp/emacscolors.html
(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)

;;(setq skeleton-pair nil);;disable the auto-pairing of parenthesis

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;;Color Theme 
(add-to-list 'load-path "~/.emacs.d/plugins/color-theme-6.6.0") 
(require 'color-theme) 
(color-theme-initialize) 
(color-theme-gnome2)


;;set font family
(set-default-font "-outline-consolas-normal-r-normal-delnormal-14-97-96-96-c-*-iso8859-1")

(setq-default indent-tabs-mode nil)    ; use only spaces and no tabs
(setq default-tab-width 4)

;;configure lisp
(add-to-list 'load-path "/opt/local/share/emacs/site-lisp/slime")
(setq slime-lisp-implementations
     `((sbcl ("/opt/local/bin/sbcl"))
       (abcl ("/opt/local/bin/abcl"))
       (clisp ("/opt/local/bin/clisp"))))
(require 'slime)
(slime-setup  '(slime-repl slime-asdf slime-fancy slime-banner))
