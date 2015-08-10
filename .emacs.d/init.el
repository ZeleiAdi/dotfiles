(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))
(mapc (lambda (package) (unless (package-installed-p package) (package-install package))) '(evil flycheck monokai-theme powerline undo-tree web-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(desktop-save-mode t)
 '(evil-mode t)
 '(global-flycheck-mode t)
 '(global-hl-line-mode t)
 '(global-undo-tree-mode t)
 '(indent-tabs-mode nil)
 '(initial-major-mode (quote ruby-mode))
 '(initial-scratch-message nil)
 '(menu-bar-mode nil)
 '(powerline-default-separator (quote slant))
 '(powerline-default-separator-dir (quote (right . right)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(undo-tree-auto-save-history t)
 '(web-mode-enable-auto-closing t)
 '(web-mode-markup-indent-offset 2)
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:weight normal :height 120 :width normal :foundry "adobe" :family "Source Code Pro"))))
 '(powerline-active1 ((t (:background "#272822"))))
 '(powerline-active2 ((t (:background "#3d3e31"))))
 '(powerline-inactive1 ((t (:background "#272822"))))
 '(powerline-inactive2 ((t (:background "#3e3d31")))))

(load-theme 'monokai t)

(require 'powerline)
(powerline-default-theme)
(setq powerline-display-buffer-size t)
(setq powerline-display-mule-info nil)
(setq powerline-display-hud nil)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(define-key evil-normal-state-map
  "za" 'web-mode-fold-or-unfold)

(defun prelude-yank-to-end-of-line ()
  "Yank to end of line."
  (interactive)
  (evil-yank (point) (point-at-eol)))

(define-key evil-normal-state-map
  "Y" 'prelude-yank-to-end-of-line)
