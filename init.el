;(setq debug-on-error t)

;;package
;(require 'package)
;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
;(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)

;; 環境を日本語、UTF-8にする
(set-locale-environment nil)
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(prefer-coding-system 'utf-8)

;;leafの設定
;; Emacs自体が書き込む設定先の変更
(setq custom-file (locate-user-emacs-file "custom.el"))
(unless (file-exists-p custom-file)
  (write-region "" nil custom-file))
(load custom-file)

(prog1 "prepare leaf"
  (prog1 "package"
    (custom-set-variables
     '(package-archives '(("org"   . "https://orgmode.org/elpa/")
                          ("melpa" . "https://melpa.org/packages/")
                          ("gnu"   . "https://elpa.gnu.org/packages/"))))
    (package-initialize))

  (prog1 "leaf"
    (unless (package-installed-p 'leaf)
      (unless (assoc 'leaf package-archive-contents)
        (package-refresh-contents))
      (condition-case err
          (package-install 'leaf)
        (error
         (package-refresh-contents)       ; renew local melpa cache if fail
         (package-install 'leaf))))

    (leaf leaf-keywords
      :ensure t
      :config (leaf-keywords-init)))

  (prog1 "optional packages for leaf-keywords"
    ;; optional packages if you want to use :hydra, :el-get,,,
    (leaf hydra :ensure t)
    (leaf el-get :ensure t
      :custom ((el-get-git-shallow-clone  . t)))))

;; neotree iconsの導入
(leaf all-the-icons
  :ensure t)

;;neotreeの導入
(leaf neotree
  :ensure t
  :bind ("C-o" . neotree-projectile-toggle)
  :config
;;  (global-display-line-numbers-mode 0)
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow))
  :preface
    (defun neotree-projectile-toggle ()
      (interactive)
      (let ((project-dir
         (ignore-errors
         ;;; Pick one: projectile or find-file-in-project
           (projectile-project-root)
           ))
        (file-name (buffer-file-name))
        (neo-smart-open t))
    (if (and (fboundp 'neo-global--window-exists-p)
         (neo-global--window-exists-p))
        (neotree-hide)
      (progn
        (neotree-show)
        (if project-dir
        (neotree-dir project-dir))
        (if file-name
        (neotree-find file-name)))))))

;;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))




;; doom-thmeの導入
(leaf doom-themes
  :ensure t
  :config
  (load-theme 'doom-dracula t)
  (doom-themes-org-config))

;; にゃーん
;; (leaf nyan-mode
;;   :ensure t
;;   :config
;;   (nyan-mode)
;;   (nyan-start-animation))
;; モードラインの設定
(leaf doom-modeline
  :ensure t
  :custom ((doom-modeline-icon . t)
           (doom-modeline-major-mode-icon . 'dark)
           (doom-modeline-minor-modes . nil))
  :config
  (line-number-mode 0)
  (column-number-mode 0))


(leaf flycheck
  :doc "On-the-fly syntax checking"
  :req "dash-2.12.1" "pkg-info-0.4" "let-alist-1.0.4" "seq-1.11" "emacs-24.3"
  :tag "minor-mode" "tools" "languages" "convenience" "emacs>=24.3"
  :url "http://www.flycheck.org"
  :emacs>= 24.3
  :ensure t
  :bind (("M-n" . flycheck-next-error)
         ("M-p" . flycheck-previous-error))
  :global-minor-mode global-flycheck-mode)

(leaf paren
  :doc "highlight matching paren"
  :tag "builtin"
  :custom ((show-paren-delay . 0.1))
  :global-minor-mode show-paren-mode)

(leaf cc-mode
  :doc "major mode for editing C and similar languages"
  :tag "builtin"
  :defvar (c-basic-offset)
  :bind (c-mode-base-map
         ("C-c c" . compile))
  :mode-hook
  (c-mode-hook . ((c-set-style "bsd")
                  (setq c-basic-offset 4)))
  (c++-mode-hook . ((c-set-style "bsd")
                    (setq c-basic-offset 4)
		    (setq flycheck-clang-language-standard "c++11"))))

;; ivy-modeの設定
(leaf ivy
  :doc "Incremental Vertical completYon"
  :req "emacs-24.5"
  :tag "matching" "emacs>=24.5"
  :url "https://github.com/abo-abo/swiper"
  :emacs>= 24.5
  :ensure t
  :leaf-defer nil
  :custom ((ivy-initial-inputs-alist . nil)
           (ivy-re-builders-alist . '((t . ivy--regex-fuzzy)
                                      (swiper . ivy--regex-plus)))
           (ivy-use-selectable-prompt . t))
  :global-minor-mode t
  :config
  (leaf swiper
    :doc "Isearch with an overview. Oh, man!"
    :req "emacs-24.5" "ivy-0.13.0"
    :tag "matching" "emacs>=24.5"
    :url "https://github.com/abo-abo/swiper"
    :emacs>= 24.5
    :ensure t
    :bind (("C-s" . swiper)))

  (leaf counsel
    :doc "Various completion functions using Ivy"
    :req "emacs-24.5" "swiper-0.13.0"
    :tag "tools" "matching" "convenience" "emacs>=24.5"
    :url "https://github.com/abo-abo/swiper"
    :emacs>= 24.5
    :ensure t
    :bind (("C-S-s" . counsel-imenu)
           ("C-x C-r" . counsel-recentf))
    :custom `((counsel-yank-pop-separator . "\n----------\n")
              (counsel-find-file-ignore-regexp . ,(rx-to-string '(or "./" "../") 'no-group)))
    :global-minor-mode t))

(leaf prescient
  :doc "Better sorting and filtering"
  :req "emacs-25.1"
  :tag "extensions" "emacs>=25.1"
  :url "https://github.com/raxod502/prescient.el"
  :emacs>= 25.1
  :ensure t
  :commands (prescient-persist-mode)
  :custom `((prescient-aggressive-file-save . t)
            (prescient-save-file . ,(locate-user-emacs-file "prescient")))
  :global-minor-mode prescient-persist-mode)
  
(leaf ivy-prescient
  :doc "prescient.el + Ivy"
  :req "emacs-25.1" "prescient-4.0" "ivy-0.11.0"
  :tag "extensions" "emacs>=25.1"
  :url "https://github.com/raxod502/prescient.el"
  :emacs>= 25.1
  :ensure t
  :after prescient ivy
  :custom ((ivy-prescient-retain-classic-highlighting . t))
  :global-minor-mode t)

;; display line numbers  linumの代替だけどneotreeとの相性的にlinumに戻した
;;(global-display-line-numbers-mode)
;; テーマはdeeper-blueを使用している。これに合わせた色を選んだつもり
;;(set-face-attribute 'line-number nil
;;                   :foreground "gray")
;;(set-face-attribute 'line-number-current-line nil
;;                    :foreground "red")


;; 行数を表示する。これは軽くなる魔法
(global-linum-mode t)
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
;; スクロールは1行ごとに
(setq mouse-wheel-scroll-amount '(1 ((shift) . 5)))
;; カーソルの点滅をやめる
(blink-cursor-mode 0)
;; 対応する括弧を光らせる
(show-paren-mode t)
;;C-h backspace
(keyboard-translate ?\C-h ?\C-?)
;; "yes or no" の選択を "y or n" にする
(fset 'yes-or-no-p 'y-or-n-p)
;; Macのoptionをメタキーにする
(setq mac-option-modifier 'meta)
;; C-c c で compile コマンドを呼び出す
(define-key mode-specific-map "c" 'compile)
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
;; markdownの設定
(autoload 'markdown-preview-mode "markdown-preview-mode.el" t)
(setq markdown-preview-stylesheets (list "github.css"))

;; タイトルにフルパスを表示
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
; 全バッファで有効にする
(global-company-mode)
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
;;画面のチラつき対策
;;(add-to-list 'default-frame-alist '(inhibit-double-buffering . t)
(setq auto-save-default nil)
  


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


;; テーマ
;;(load-theme 'dracula t)

;; init.el ends here
(put 'set-goal-column 'disabled nil)
