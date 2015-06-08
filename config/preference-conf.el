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

;; �������
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

	;; ָ����ɫ
	(set-cursor-color "red")
	;; �����ɫ
	(set-mouse-color "purple")

	;; һ�򿪾����� text ģʽ��
	(setq default-major-mode 'text-mode)

	;; �﷨����
	(global-font-lock-mode t)

	;; �� y/n���� yes/no
	(fset 'yes-or-no-p 'y-or-n-p)
	;; ��ʾ����ƥ��
	(show-paren-mode t)
	(setq show-paren-style 'parentheses)

	;; ��ʾʱ�䣬��ʽ����
	(display-time-mode t)
	(setq display-time-24hr-format t)
	(setq display-time-day-and-date t)

	(setq transient-mark-mode t)

	;; ֧��emacs���ⲿ�����ճ��
	(setq x-select-enable-clipboard t)

	;; �ڱ�������ʾ��Ŀǰ��ʲôλ��
	(setq frame-title-format "%b - Emacs")
	;; Ĭ����ʾ 80�оͻ���
	(setq default-fill-column 80)

	;;
	(setq gnus-inhibit-startup-message t)
	(setq inhibit-startup-message t)

	;;ȥ��������
	(tool-bar-mode 0)

	;;ȥ���˵���
	;;(menu-bar-mode 0)

	;;ȥ��������
	(scroll-bar-mode 0)

	;;���ù����ʽ
	;;'box -> ���� 'bar -> ����
	(setq-default cursor-type 'bar)


	;;�������弰��С
	;(set-default-font "-outline-Consolas-normal-r-normal-normal-16-120-96-96-c-*-iso8859-1")
	;;Setting English Font
	;(set-face-attribute 'default nil :font "Consolas 12")
	;;��������
	;(dolist
	;	(charset '(kana han symbol cjk-misc bopomofo))
	;	(set-fontset-font (frame-parameter nil 'font) charset
	;	(font-spec :family "������" :size 15))
	;)

	;; Setting English Font
	(set-face-attribute
	  'default nil :font "Consolas 12")

	;; Chinese Font
	(dolist (charset '(kana han symbol cjk-misc bopomofo))
	    (set-fontset-font (frame-parameter nil 'font)
	                      charset
	                      (font-spec :family "Microsoft Yahei" :size 13)))

	;; ����Ĭ��tab���
	(setq tab-width 1
	      indent-tabs-mode t
	      c-basic-offset 2)
	;; �س�����
	;;(global-set-key "\C-m" 'newline-and-indent)
	;;(global-set-key (kbd "C-<return>") 'newline)

	;; ʵ��ȫ��Ч������ݼ�Ϊf11
	;;
	;;(global-set-key [f11] 'my-fullscreen)
	;;(defun my-fullscreen ()
	;;(interactive)
	;;(x-send-client-message nil 0 nil "_NET_WM_STATE" 32
	;;'(2 "_NET_WM_STATE_FULLSCREEN" 0))
	;;)
	;; ���
	;;(defun my-maximized ()
	;;(interactive)
	;;(x-send-client-message
	;;nil 0 nil "_NET_WM_STATE" 32
	;;'(2 "_NET_WM_STATE_MAXIMIZED_HORZ" 0))
	;;(x-send-client-message
	;;nil 0 nil "_NET_WM_STATE" 32
	;;'(2 "_NET_WM_STATE_MAXIMIZED_VERT" 0))
	;;)
	;; ����emacsʱ�������
	;;(my-maximized)
	;; �������ڴ�С
	;;(setq default-frame-alist
	;;'((height . 35) (width . 125) (menu-bar-lines . 5) (tool-bar-lines . 0)
	;;))
	;;(setq initial-frame-alist '((top . 0) (left . 0) (width . 97) (height . 49)))

	;; ����ҳ��ʱ�Ƚ��������Ҫ��ҳ�Ĺ���
	(setq scroll-step 1
	      scroll-margin 3
	      scroll-conservatively 10000)
	(setq visible-bell 0)
)

(preference-default)
(provide 'preference-conf)