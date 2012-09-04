(progn (cd "~/.emacs.d")
       (normal-top-level-add-subdirs-to-load-path))

(server-start)

(global-set-key (kbd "<escape> <up>") 'windmove-up)
(global-set-key (kbd "<escape> <down>") 'windmove-down)
(global-set-key (kbd "<escape> <right>") 'windmove-right)
(global-set-key (kbd "<escape> <left>") 'windmove-left)

(setq make-backup-files nil)

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq auto-mode-alist
  (cons '("\\.text" . markdown-mode) auto-mode-alist))
(setq auto-mode-alist
  (cons '("\\.md" . markdown-mode) auto-mode-alist))

;(require 'color-theme)
;(color-theme-initialize)
;(color-theme-charcoal-black)
(require 'zenburn-theme)

(require 'uniquify) 
(setq 
  uniquify-buffer-name-style 'post-forward
  uniquify-separator ":")

(require 'undo-tree)
(global-undo-tree-mode t)

(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "M-i") 'helm-semantic-or-imenu)
(global-set-key (kbd "C-x y") 'helm-show-kill-ring)

(load-file "emacs-for-python/epy-init.el")
(epy-setup-checker "/usr/local/bin/pyflakes %f")

(setq skeleton-pair nil) 

(require 'highlight-indentation)
(add-hook 'python-mode-hook 'highlight-indentation)
(put 'upcase-region 'disabled nil)

;; (global-hl-line-mode t) ;; To enable
;; example of setting env var named “path”, by appending a new path to existing path
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
