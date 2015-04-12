(package-initialize)

(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(desktop-save-mode t)
 '(evil-ex-search-vim-style-regexp t)
 '(evil-ex-substitute-global t)
 '(evil-magic (quote very-magic))
 '(evil-mode t)
 '(evil-search-module (quote evil-search))
 '(global-evil-matchit-mode t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(global-undo-tree-mode t)
 '(global-visual-line-mode t)
 '(menu-bar-mode nil)
 '(org-startup-truncated nil)
 '(package-archives
   (quote
    (("melpa" . "http://melpa.org/packages/")
     ("gnu" . "http://elpa.gnu.org/packages/"))))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(undo-tree-auto-save-history t)
 '(web-mode-auto-close-style 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:weight normal :height 120 :width normal :foundry "adobe" :family "Source Code Pro")))))

(load-theme 'monokai t)
(evilnc-default-hotkeys)
