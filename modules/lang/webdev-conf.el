;;; webdev-conf.el -*- lexical-binding: t; -*-

  (use-package web-mode
    :straight t
    :mode
    (("\\.phtml\\'" . web-mode)
     ("\\.cshtml\\'" . web-mode)
     ("\\.tpl\\.php\\'" . web-mode)
     ("\\.blade\\.php\\'" . web-mode)
     ("\\.[agj]sp\\'" . web-mode)
     ("\\.as[cp]x\\'" . web-mode)
     ("\\.erb\\'" . web-mode)
     ("\\.mustache\\'" . web-mode)
     ("\\.djhtml\\'" . web-mode)
     ("\\.html?\\'" . web-mode)
     ("\\.css\\'" . web-mode))
    :config
    (set-face-attribute 'web-mode-css-at-rule-face nil :foreground "Pink3")
    (add-to-list 'company-backends '(company-css company-web-html))
    )

  ;; Configure Emmet-mode and attach it to Web-mode.

  (use-package emmet-mode
    :straight t
    :config (setq emmet-self-closing-tag-style "")
    :hook (web-mode)
    )


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
