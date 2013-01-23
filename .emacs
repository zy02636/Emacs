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
(set-default-font "-outline-consolas-normal-r-normal-normal-14-97-96-96-c-*-iso8859-1")
