; (require 'unicad)

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-blackboard)))
; (set-face-font 'menu "7x14")
; (set-face-foreground 'menu "white")

;; 高亮当前行
; (require 'hl-line-settings)
;; 可以把光标由方块变成一个小长条
;;(require 'bar-cursor)

; (setq default-frame-alist (font . "Lucida Console 12"))

; Setting English Font
(set-face-attribute
  'default nil :font "Consolas 12")

; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "Microsoft Yahei" :size 13)))


; (set-default-font "Consolas-14")
; (set-fontset-font "fontset-default" 'unicode '("微软雅黑" . "unicode-bmp"))