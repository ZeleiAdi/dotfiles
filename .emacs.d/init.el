(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)
(when (not package-archive-contents) (package-refresh-contents))
(mapc (lambda (package) (unless (package-installed-p package) (package-install package))) '(evil flycheck monokai-theme undo-tree web-mode))

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
 '(global-linum-mode t)
 '(global-undo-tree-mode t)
 '(indent-tabs-mode nil)
 '(initial-major-mode (quote ruby-mode))
 '(initial-scratch-message nil)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(undo-tree-auto-save-history t)
 '(web-mode-markup-indent-offset 2)
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:weight normal :height 120 :width normal :foundry "adobe" :family "Source Code Pro")))))

(load-theme 'monokai t)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun prelude-yank-to-end-of-line ()
  "Yank to end of line."
  (interactive)
  (evil-yank (point) (point-at-eol)))

(define-key evil-normal-state-map
  (kbd "Y") 'prelude-yank-to-end-of-line)
