;; js-conf.el -*- lexical-binding: t; -*-

;; Install js2-mode for better javascript editing

(use-package js2-mode
  :straight t
  :defer t
  :interpreter "node"
  :config
  (add-hook 'js-mode-hook js2-minor-mode)
)

(use-package xref-js2
  :straight t
  :after js2-mode
  :defer t
  :config
  (add-hook 'js-mode-hook (lambda ()
			     (add-hook 'xref-backend-functions #'xref-js2-xref-backend))))

(use-package js2-refactor
  :straight t
  :defer t
  :after js2-mode
  :config
  (add-hook 'js-mode-hook js2-refactor-mode))

(use-package tide
  :straight t
  :after (company flycheck company-tide)
  :hook
  ((js-mode . tide-setup)
   (js-mode . tide-hl-identifier-mode)
   (before-save . tide-format-before-save))
  :config
  (add-to-list 'company-backends 'company-tide)
  )
