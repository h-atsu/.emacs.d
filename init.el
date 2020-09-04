(defun add-to-load-path (&rest paths)
  (let (path)
    (dolist (path paths paths)
      (let ((default-directory
	      (expand-file-name (concat user-emacs-directory path))))
	(add-to-list 'load-path default-directory)
	(if (fboundp 'normal-top-level-add-subdirs-to-load-path)
	    (normal-top-level-add-subdirs-to-load-path))))))

(add-to-load-path "elisp" "conf")

;;package
(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)
(package-initialize)


(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    company
    yasnippet
    dashboard
    helm
    powerline
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))

;;nyan-mode
(require 'nyan-mode)
(nyan-mode)
(nyan-start-animation)

;; flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)
(with-eval-after-load 'flycheck
  (flycheck-pos-tip-mode))
(add-hook 'c++-mode-hook (lambda () (setq flycheck-clang-language-standard "c++11")))
;; 行数を表示する
(global-linum-mode t)
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
;; カーソルの点滅をやめる
(blink-cursor-mode 0)
;; カーソル行をハイライトする
(global-hl-line-mode t)
;;インデント設定
(add-hook 'c-mode-hook '(lambda () (setq tab-width 4)))
(add-hook 'c++-mode-hook '(lambda () (setq tab-width 4)))
;; 対応する括弧を光らせる
(show-paren-mode 1)
;;C-h backspace
(keyboard-translate ?\C-h ?\C-?)
;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)
;; Macのoptionをメタキーにする
(setq mac-option-modifier 'meta)
;; C-c c で compile コマンドを呼び出す
(define-key mode-specific-map "c" 'compile)
;; C-c C-z で shell コマンドを呼び出す
(define-key mode-specific-map "¥C-z" 'shell-command)
;;disable beep sound
(setq ring-bell-function 'ignore)
;;閉じ括弧
(electric-pair-mode 1)
;;ウィンドウの切り替え
(define-key global-map (kbd "C-t") 'other-window)
;;折り返し表示の切り替え
(define-key global-map (kbd "C-c l") 'toggle-truncate-lines)
;;矩形編集
(cua-mode t)
(setq cua-enable-cua-keys nil) 
;; hide bars
(scroll-bar-mode -1)
(tool-bar-mode -1)
;;時計を表示，(好みに応じてフォーマットを変更可能)
(setq display-time-day-and-date t)
(display-time-mode t)
;;fontの設定 最強のゆるふわフォントらしい
;;(set-face-attribute 'default nil
;;            :family "ゆたぽん（コーディング）Backsl"
;;            :height 130)

(setq frame-title-format "%f")
;;ファイルが!# から始まる場合，+xをつけて保存する
(add-hook 'after-save-hook
	  'executable-make-buffer-file-executable-if-script-p)
;; backup の保存先
(setq backup-directory-alist
  (cons (cons ".*" (expand-file-name "~/.emacs.d/backup"))
        backup-directory-alist))
(setq auto-save-file-name-transforms
      `((".*", (expand-file-name "~/.emacs.d/backup/") t)))
;;company-modeの設定
(require 'company)
(global-company-mode) ; 全バッファで有効にする 
(setq company-idle-delay 0) ; デフォルトは0.5
(setq company-minimum-prefix-length 2) ; デフォルトは4
(setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る
;;yasnippetsの設定
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/mysnippets"
        "~/.emacs.d/yasnippets/snippets"
        ))
;; 既存スニペットを挿入する
(define-key yas-minor-mode-map (kbd "C-x i i") 'yas-insert-snippet)
;; 新規スニペットを作成するバッファを用意する
(define-key yas-minor-mode-map (kbd "C-x i n") 'yas-new-snippet)
;; 既存スニペットを閲覧・編集する
(define-key yas-minor-mode-map (kbd "C-x i v") 'yas-visit-snippet-file)
(yas-global-mode 1)


;;setting dash bord-----------------------------------
;; スタート時のスプラッシュ非表示
(setq inhibit-startup-message t)
;; 起動画面をdashboardで変更
(require 'dashboard)
;; Set the title
(setq dashboard-banner-logo-title "Is Emacs my heartthrob?")
;; Set the banner
(setq dashboard-startup-banner "~/.emacs.d/icon.jpeg")
(dashboard-setup-startup-hook)
(setq dashboard-items '((recents  . 20)))




;;setting of helm----------------------------------------------------
(require 'helm)
(require 'helm-config)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

(when (executable-find "curl")
  (setq helm-google-suggest-use-curl-p t))

(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
      helm-ff-file-name-history-use-recentf t
      helm-echo-input-in-header-line t)

(defun spacemacs//helm-hide-minibuffer-maybe ()
  "Hide minibuffer in Helm session if we use the header line as input field."
  (when (with-helm-buffer helm-echo-input-in-header-line)
    (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
      (overlay-put ov 'window (selected-window))
      (overlay-put ov 'face
                   (let ((bg-color (face-background 'default nil)))
                     `(:background ,bg-color :foreground ,bg-color)))
      (setq-local cursor-type nil))))


(add-hook 'helm-minibuffer-set-up-hook
          'spacemacs//helm-hide-minibuffer-maybe)

(setq helm-autoresize-max-height 0)
(setq helm-autoresize-min-height 20)
(helm-autoresize-mode 1)

(helm-mode 1)


;;color theme----------------------------------------
;; (load-theme 'atom-one-dark t)
(load-theme 'dracula t)

;; 透過
;; (defun set-alpha (alpha-num)
;;   "set frame parameter 'alpha"
;;   (interactive "nAlpha: ")
;;   (set-frame-parameter nil 'alpha (cons alpha-num '(90))))
;; 初期値
;;(set-frame-parameter nil 'alpha 92)



;;power line-----------------------------------------------------
(require 'powerline)
(defconst color1 "SteelBlue")
(defconst color2 "salmon")

(set-face-attribute 'mode-line nil
                    :foreground "#fff"
                    :background color1
                    :bold t
                    :box nil)

(set-face-attribute 'powerline-active1 nil
                    :foreground "gray23"
                    :background color2
                    :bold t
                    :box nil
                    :inherit 'mode-line)

(set-face-attribute 'powerline-active2 nil
                    :foreground "white smoke"
                    :background "gray20"
                    :bold t
                    :box nil
                    :inherit 'mode-line)

(set-face-attribute 'mode-line-inactive nil
                    :foreground "#fff"
                    :background color1
                    :bold t
                    :box nil)

(set-face-attribute 'powerline-inactive1 nil
                    :foreground "gray23"
                    :background color2
                    :bold t
                    :box nil
                    :inherit 'mode-line)

(set-face-attribute 'powerline-inactive2 nil
                    :foreground "white smoke"
                    :background "gray20"
                    :bold t
                    :box nil
                    :inherit 'mode-line)

(powerline-center-theme)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(spaceline nyan-mode nlinum yasnippet use-package undo-tree tabbar solarized-theme powerline multi-term helm fuzzy flymake flycheck-vdm flycheck-pycheckers flycheck-pos-tip exec-path-from-shell dracula-theme dashboard company-irony auto-complete atom-one-dark-theme)))
