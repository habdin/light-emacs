;;; python-conf -*- lexical-binding: t; -*-

(use-package elpy
  :straight t
  :defer t
  :init
  (advice-add 'python-mode :before #'elpy-enable)
  :config
  (when (require 'flycheck nil t)
    (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
    ))

 (use-package py-autopep8
    :config
    (add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save))

  (use-package ein
    :config
      (setq python-shell-interpreter "ipython"
	    python-shell-interpreter-arg "-i --simple-prompt"))
