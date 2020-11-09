;;; webdev-conf.el -*- lexical-binding: t; -*-

  (use-package web-mode
    :straight t
    :init
    (setq web-mode-enable-current-element-highlight t
	  web-mode-enable-current-column-highlight t)
    :mode
    (("\\.phtml\\'" . web-mode)
     ("\\.tpl\\.php\\'" . web-mode)
     ("\\.[agj]sp\\'" . web-mode)
     ("\\.as[cp]x\\'" . web-mode)
     ("\\.erb\\'" . web-mode)
     ("\\.mustache\\'" . web-mode)
     ("\\.djhtml\\'" . web-mode)
     ("\\.html?\\'" . web-mode)
     ("\\.css\\'" . web-mode))

    :config
    (setq  web-mode-markup-indent-offset 2
	   web-mode-css-indent-offset 2
	   web-mode-code-indent-offset 2
	   web-mode-style-padding 1
	   web-mode-script-padding 1
	   web-mode-block-padding 0
	   web-mode-enable-auto-pairing t
	   web-mode-enable-css-colorization t
	   web-mode-enable-part-face t
	   web-mode-comment-keywords t
	   web-mode-enable-heredoc-fontification t)
    (set-face-attribute 'web-mode-css-at-rule-face nil :foreground "Pink3")
    (add-to-list 'company-backends '(company-css company-web-html))
    )

  ;; Configure Emmet-mode and attach it to Web-mode.

  (use-package emmet-mode
    :straight t
    :config
    (setq emmet-self-closing-tag-style "")
    :hook (web-mode))


  ;; Configure Skewer-mode

  (use-package skewer-mode
    :straight t
    :init
    (add-hook 'web-mode-hook 'my-skewer-enable)
    :hook
    (web-mode))

  (use-package impatient-mode
    :straight t
    :hook
    (web-mode))

  (use-package lorem-ipsum)
