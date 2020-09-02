;;; complmngr-conf.el -*- lexical-binding: t; -*-

(use-package ivy
  :straight t
  :defer t
  :config
  (setq ivy-use-virtual-buffers t
	ivy-count-format "[%d/%d] "
	ivy-height 20)
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

(use-package ivy-rich
  :straight t
  :defer t
  :after ivy counsel
  :init
  (ivy-rich-mode))

(use-package all-the-icons-ivy-rich
  :straight t
  :defer t
  :after ivy ivy-rich counsel
  :init (all-the-icons-ivy-rich-mode)
  :config
  (setq all-the-icons-ivy-rich-icon-size 1.5))

(use-package counsel
  :straight t
  :defer t)

(use-package counsel-projectile
  :straight t
  :after projectile counsel)

(use-package counsel-pydoc)


;; Use `company-mode' for in-buffer autocompletion. Company Mode has many backends.
;; These will be configured in here as well.

(use-package company
  :straight t
  :config
  (add-hook 'after-init-hook 'global-company-mode)
  :init
  (setq company-idle-delay 0.1
	company-minimum-prefix-length 2
	company-tooltip-align-annotations t
	company-global-modes '(not help-mode gud-mode message-mode erc-mode)
	company-backends '(company-capf company-files company-abbrev company-dabbrev)
	)
  :bind
  ("M-C-<space>" . 'company-complete))

(use-package company-web
  :straight t
  )

(use-package company-box
  :straight t
  :hook (company-mode . company-box-mode)
  :config
  (setq company-box-icons-alist 'company-box-icons-all-the-icons))

(use-package company-jedi
  :straight t
  :after company elpy
  :config
  (add-to-list 'company-backends 'company-jedi))
