;; autocomplete-conf
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "packages/auto-complete-1.3.1/dict")
(require 'auto-complete-config)
(ac-config-default)
(ac-set-trigger-key "M-/")

;; 补全成员变量
; (defun my-semantic-complete ()
;       (interactive)
;       (auto-complete '(ac-source-semantic)))
; (global-set-key "\C-cn" 'my-semantic-complete)
; (setq semantic-idle-completions-mode nil)

(provide 'auto-complete-conf)