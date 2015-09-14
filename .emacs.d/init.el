(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))
(mapc (lambda (package) (unless (package-installed-p package) (package-install package))) '(company evil flycheck js2-mode monokai-theme powerline rainbow-delimiters undo-tree web-mode))

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
 '(js2-basic-offset 2)
 '(menu-bar-mode nil)
 '(powerline-default-separator (quote slant))
 '(powerline-default-separator-dir (quote (right . right)))
 '(powerline-display-buffer-size nil)
 '(powerline-display-hud nil)
 '(powerline-display-mule-info nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(undo-tree-auto-save-history t)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-enable-auto-closing t)
 '(web-mode-enable-auto-quoting t)
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

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun yank-to-end-of-line ()
  "Yank to end of line."
  (interactive)
  (evil-yank (point) (point-at-eol)))

(define-key evil-normal-state-map
  "Y" 'yank-to-end-of-line)

(add-to-list 'auto-mode-alist '("\\.es6\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
