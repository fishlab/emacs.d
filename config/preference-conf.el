; from emacs menu
; (custom-set-variables
;  '(column-number-mode t)
;  '(cua-mode t nil (cua-base))
;  '(display-time-mode t)
;  '(show-paren-mode t)
;  '(tool-bar-mode nil)
;  '(gnus-inhibit-startup-message nil)
;  '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
; (custom-set-faces
;  )

;; 外观设置
(defun preference-default()
	(split-window-vertically)
	(global-hl-line-mode)
	(global-font-lock-mode)

	; (setq gnus-inhibit-startup-message nil)
	;; show line number
	(global-linum-mode t)
	;; show column number
	(setq column-number-mode t)
	;; only
	;(setq line-number-mode t)

	;; 指针颜色
	(set-cursor-color "red")
	;; 鼠标颜色
	(set-mouse-color "purple")

	;; 一打开就起用 text 模式。
	(setq default-major-mode 'text-mode)

	;; 语法高亮
	(global-font-lock-mode t)

	;; 以 y/n代表 yes/no
	(fset 'yes-or-no-p 'y-or-n-p)
	;; 显示括号匹配
	(show-paren-mode t)
	(setq show-paren-style 'parentheses)

	;; 显示时间，格式如下
	(display-time-mode t)
	(setq display-time-24hr-format t)
	(setq display-time-day-and-date t)

	(setq transient-mark-mode t)

	;; 支持emacs和外部程序的粘贴
	(setq x-select-enable-clipboard t)

	;; 在标题栏提示你目前在什么位置
	(setq frame-title-format "%b - Emacs")
	;; 默认显示 80列就换行
	(setq default-fill-column 80)

	;;
	(setq gnus-inhibit-startup-message t)
	(setq inhibit-startup-message t)

	;;去掉工具栏
	(tool-bar-mode 0)

	;;去掉菜单栏
	;;(menu-bar-mode 0)

	;;去掉滚动栏
	(scroll-bar-mode 0)

	;;设置光标样式
	;;'box -> 方块 'bar -> 竖线
	(setq-default cursor-type 'bar)


	;;设置字体及大小
	;(set-default-font "-outline-Consolas-normal-r-normal-normal-16-120-96-96-c-*-iso8859-1")
	;;Setting English Font
	;(set-face-attribute 'default nil :font "Consolas 12")
	;;中文字体
	;(dolist
	;	(charset '(kana han symbol cjk-misc bopomofo))
	;	(set-fontset-font (frame-parameter nil 'font) charset
	;	(font-spec :family "新宋体" :size 15))
	;)

	;; Setting English Font
	(set-face-attribute
	  'default nil :font "Consolas 12")

	;; Chinese Font
	(dolist (charset '(kana han symbol cjk-misc bopomofo))
	    (set-fontset-font (frame-parameter nil 'font)
	                      charset
	                      (font-spec :family "Microsoft Yahei" :size 13)))

	;; 设置默认tab宽度
	(setq tab-width 1
	      indent-tabs-mode t
	      c-basic-offset 2)
	;; 回车缩进
	;;(global-set-key "\C-m" 'newline-and-indent)
	;;(global-set-key (kbd "C-<return>") 'newline)

	;; 实现全屏效果，快捷键为f11
	;;
	;;(global-set-key [f11] 'my-fullscreen)
	;;(defun my-fullscreen ()
	;;(interactive)
	;;(x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	;;'(2 "_NET_WM_STATE_FULLSCREEN" 0))
	;;)
	;; 最大化
	;;(defun my-maximized ()
	;;(interactive)
	;;(x-send-client-message
	;;nil 0 nil "_NET_WM_STATE" 32
	;;'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
	;;(x-send-client-message
	;;nil 0 nil "_NET_WM_STATE" 32
	;;'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
	;;)
	;; 启动emacs时窗口最大化
	;;(my-maximized)
	;; 启动窗口大小
	;;(setq default-frame-alist
	;;'((height . 35) (width . 125) (menu-bar-lines . 5) (tool-bar-lines . 0)
	;;))
	;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 97) (height . 49)))

	;; 滚动页面时比较舒服，不要整页的滚动
	(setq scroll-step 1
	      scroll-margin 3
	      scroll-conservatively 10000)
	(setq visible-bell 0)
)

(preference-default)
(provide 'preference-conf)