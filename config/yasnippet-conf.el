(require 'yasnippet)
(setq yas-snippet-dir-default
	(concat (file-name-directory load-file-name) "yas-snippets")
	; (expand-file-name "./yas-snippets")
	)
(setq yas-snippet-dirs
      '(
        yas-snippet-dir-default
        ;; personal snippets
        ;"/path/to/some/collection/"           ;; foo-mode and bar-mode snippet collection
        ;"/path/to/yasnippet/yasmate/snippets" ;; the yasmate collection
        ;"/path/to/yasnippet/snippets"         ;; the default collection
        ))
(yas-global-mode t)