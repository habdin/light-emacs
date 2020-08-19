;;; complmngr-conf.el -*- lexical-binding: t; -*-

(use-package ivy
  :straight t
  :defer t
  :config
  (setq ivy-use-virtual-buffers t)
  (setq ivy-count-format "(%d/%d) ")
  :init
  (ivy-mode 1)
  :bind
  (
   ("C-s" . 'swiper-isearch)
   ("M-x" . 'counsel-M-x)
   ("C-x C-f" . 'counsel-find-file)
   ("M-y" . 'counsel-yank-pop)
   ("<F1>-f" . 'counsel-describe-function)
   ("<F1>-v" . 'counsel-describe-variable)
   ("<F1>-l" . 'counsel-find-library)
   ("<F2>-i" . 'counsel-info-lookup-symbol)
   ("<F2>-u" . 'counsel-unicode-char)
   ("<F2>-j" . 'counsel-set-variable)
   ("C-x b" . 'ivy-switch-buffer)
   ("C-c v" . 'ivy-push-view)
   ("C-c V" . 'ivy-pop-view)
   ))

(use-package ivy-posframe
  :straight t
  :after ivy
  :config
  (setq ivy-posframe-display-functions-alist '((t . ivy-posframe-display-at-frame-bottom-window-center)))
  (ivy-posframe-mode t))

(use-package ivy-hydra)

(use-package counsel)

(use-package counsel-projectile)

(use-package counsel-pydoc)


;; Use `company-mode' for in-buffer autocompletion. Company Mode has many backends.
;; These will be configured in here as well.

(use-package company
  :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  :bind
  ("M-C-<space>" . 'company-complete))

(use-package company-web
  :straight t
  )

(use-package company-box
  :ensure t
  :hook (company-mode . company-box-mode))
