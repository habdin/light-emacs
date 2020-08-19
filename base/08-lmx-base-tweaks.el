;;; 08-lmx-base-tweaks.el -*- lexical-binding: t; -*-

;; Define default Emacs environment settings
(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8)

;; Change Default yes-or-no-p to a shorter prompt
(fset 'yes-or-no-p 'y-or-n-p)

;; Always reveal the pairing symbol (brackets mainly +/- others)
(show-paren-mode t)

;; Enable entering brackets, quotes, double-quotes and other symbols in pairs
(electric-pair-mode t)

;; Make the Editor aware of disk changes for any file opened within Emacs
(global-auto-revert-mode 1)

(use-package whitespace
  :diminish whitespace-mode
  :config
  (setq whitespace-line-column 10000))

;; Use `volatile-highlights' to highlight changes from pasting, ...etc.
(use-package volatile-highlights
  :straight t
  :diminish volatile-highlights-mode
  :defer t
  :config
  (volatile-highlights-mode t))

;; rainbow-mode - colourise colours in the buffer
(use-package rainbow-mode
  :straight t
  :defer t
  )

;; rainbow-delimiters - show matching brackets etc
(use-package rainbow-delimiters
  :straight t
  :defer t
  :config
  (setq global-rainbow-delimiters-mode 1))

;; show page breaks
(use-package page-break-lines
  :straight t
  :diminish page-break-lines-mode
  :defer t
  :config
  (global-page-break-lines-mode 1)
  (setq page-break-lines-modes '(emacs-lisp-mode lisp-mode scheme-mode compilation-mode outline-mode help-mode org-mode ess-mode latex-mode)))

;;; Makes Emacs Dashboard the Initial startup screen
(use-package dashboard
  :straight t
  :config
  (dashboard-setup-startup-hook)
  (setq initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
  (setq dashboard-set-heading-icons 1)
  (setq dashboard-set-file-icons 1)
  (setq dashboard-items '((projects . 5)
			  (recents . 5)
			  (bookmarks . 5)
			  (agenda .5)))
  (setq dashboard-set-navigator 1)
  (setq dashboard-navigator-buttons `(;; line1
	((,(all-the-icons-octicon "mark-github" :height 1.1 :v-adjust 0.0)
	 "Homepage"
	 "Browse homepage"
	 (lambda (&rest _) (browse-url "homepage")))
	("★" "Star" "Show stars" (lambda (&rest _) (show-stars)) warning)
	("?" "" "?/h" #'show-help nil "<" ">"))
	 ;; line 2
	((,(all-the-icons-faicon "linkedin" :height 1.1 :v-adjust 0.0)
	  "Linkedin"
	  ""
	  (lambda (&rest _) (browse-url "homepage")))
	 ("⚑" nil "Show flags" (lambda (&rest _) (message "flag")) error)))))
