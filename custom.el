(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(counsel-find-file-ignore-regexp "\\(?:\\.\\(?:\\.?/\\)\\)")
 '(counsel-yank-pop-separator "
----------
")
 '(doom-modeline-icon t)
 '(doom-modeline-major-mode-icon 'dark)
 '(doom-modeline-minor-modes nil)
 '(el-get-git-shallow-clone t)
 '(ivy-initial-inputs-alist nil)
 '(ivy-prescient-retain-classic-highlighting t)
 '(ivy-re-builders-alist
   '((t . ivy-prescient-re-builder)
     (swiper . ivy--regex-plus)) t)
 '(ivy-use-selectable-prompt t)
 '(multi-term-program "/bin/zsh" t)
 '(package-archives
   '(("org" . "https://orgmode.org/elpa/")
     ("melpa" . "https://melpa.org/packages/")
     ("gnu" . "https://elpa.gnu.org/packages/")))
 '(package-selected-packages
   '(doom-themes web-server uuidgen websocket markdown-preview-eww yasnippet use-package undo-tree tabbar spaceline solarized-theme nyan-mode nlinum neotree multi-term helm fuzzy flymake flycheck-vdm flycheck-pycheckers flycheck-pos-tip exec-path-from-shell dracula-theme dashboard company-irony auto-complete atom-one-dark-theme))
 '(prescient-aggressive-file-save t)
 '(prescient-save-file "~/.emacs.d/prescient")
 '(show-paren-delay 0.1)
 '(sml/no-confirm-load-theme t)
 '(sml/shorten-directory -1)
 '(sml/theme 'dark))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
