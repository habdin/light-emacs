;; csharp-conf.el -*- lexical-binding: t; -*-

(use-package csharp-mode
  :straight t
  :defer t
  :config
  (add-hook 'csharp-mode-hook 'flycheck-mode))

(use-package csproj-mode
  :straight t
  :defer t)

(use-package omnisharp
  :straight t
  :defer t
  :config
  (add-to-list 'company-backends 'company-omnisharp)
  (add-hook 'csharp-mode-hook 'omnisharp-mode))
