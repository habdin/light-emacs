;;; treemacs.el -*- lexical-binding: t; -*-

(use-package treemacs
  :straight t
  :defer t
  :config
  (progn
    (setq treemacs-collapse-dirs (if treemacs-python-executable 3 0)
	  treemacs-deferred-git-apply-delay 0.5
	  treemacs-directory-name-transformer #'identity
	  treemacs-display-in-side-window t
	  treemacs-eldoc-display t
	  treemacs-file-event-delay 5000
	  treemacs-follow-after-init t
	  treemacs-git-command-pipe ""
	  treemacs-goto-tag-strategy 'refetch-index
	  treemacs-indentation 2
	  treemacs-indentation-string " "
	  treemacs-is-never-other-window nil
	  treemacs-max-git-entries 5000
	  treemacs-missing-project-action 'ask
	  treemacs-move-forward-on-expand nil
	  treemacs-no-png-images nil
	  treemacs-no-delete-other-windows t
	  treemacs-project-follow-cleanup nil
	  treemacs-persist-file (expand-file-name ".local/cache/treemacs-persist")
	  treemacs-position 'left
	  treemacs-recenter-distance 0.1
	  treemacs-recenter-after-file-follow nil
	  treemacs-recenter-after-tag-follow nil
	  treemacs-recenter-after-project-jump 'always
	  treemacs-recenter-after-project-expand 'on-distance
	  treemacs-show-hidden-files nil
	  treemacs-show-cursor nil
	  treemacs-silent-filewatch nil
	  treemacs-silent-refresh nil
	  treemacs-space-between-root-nodes t
	  treemacs-tag-follow-cleanup t
	  treemacs-tag-follow-delay 1.5
	  treemacs-user-mode-line-format nil
	  treemacs-user-header-line-format nil
	  treemacs-width 30
	  treemacs-workspace-switch-cleanup nil)
    (treemacs-follow-mode t)
    (treemacs-filewatch-mode t)
    (treemacs-fringe-indicator-mode t)
    (pcase (cons (not (null (executable-find "git")))
		 (not (null treemacs-python-executable)))
      (`(t . t)
       (treemacs-git-mode 'deferred))
      (`(t . _)
       (treemacs-git-mode 'simple))))
  :bind
  (:map global-map
	([f3] . treemacs)
	("M-0" . treemacs-select-window))
  )

(use-package treemacs-projectile
  :after treemacs projectile
  :straight t)

(use-package treemacs-magit
  :after treemacs magit
  :straight t)

(use-package treemacs-persp
  :after treemacs perspective
  :straight t
  :config
  (treemacs-set-scope-type 'Perspectives))
