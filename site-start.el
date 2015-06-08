; (require 'unicad)
(require 'preference-conf)
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-blackboard)
     ))
(load "config/yasnippet-conf.el")
(require 'auto-complete-conf)
; (set-face-font 'menu "7x14")
; (set-face-foreground 'menu "white")

;; 高亮当前行
; (require 'hl-line-settings)
;; 可以把光标由方块变成一个小长条
;;(require 'bar-cursor)

; (setq default-frame-alist (font . "Lucida Console 12"))




; (set-default-font "Consolas-14")
; (set-fontset-font "fontset-default" 'unicode '("微软雅黑" . "unicode-bmp"))

