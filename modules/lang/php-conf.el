;; php-conf.el -*- lexical-binding: t; -*-

;; Install php-mode

(use-package php-mode
  :straight t
  :defer t
  :mode
  (("\\.php\\'" . php-mode))
  :config
  (add-hook 'php-mode-hook (lambda ()
			    (add-to-list 'company-backends 'company-ac-php-backend))))

;; Auto-completion support

(use-package company-php
  :straight t
  :defer t
  )
