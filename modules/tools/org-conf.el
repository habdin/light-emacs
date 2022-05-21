;;; org-conf.el -*- lexical-binding: t; -*-

(use-package org
  :straight t
  :defer t
  :config
  (setq org-directory "~/Documents/Organize/"
	org-agenda-files (concat org-directory "agenda.org")
	org-hide-emphasis-markers t)
  (font-lock-add-keywords 'org-mode
			  '(("^ *\\([-]\\) "
			     (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
  (let* ((variable-tuple
	  (when (display-graphic-p)
	      (cond
	       ((x-list-fonts "Fira Code") '(:font "Fira Code"))
	       ((x-list-fonts "Iosveka") '(:font "Iosveka"))
	       ((x-list-fonts "Verdana") '(:font "Verdana"))
	       ((x-family-fonts "Sans Serif") '(:family "Sans Serif"))
	       (nil (warn "Can't find a Sans Serif Font. Please install Source Sans Pro.")))))
	 (base-font-color (face-foreground 'default nil 'default))
	 (headline `(:inherit default :weight bold :foreground ,base-font-color)))
    (custom-theme-set-faces
     'user
     `(org-level-8 ((t (,@headline ,@variable-tuple))))
     `(org-level-7 ((t (,@headline ,@variable-tuple))))
     `(org-level-6 ((t (,@headline ,@variable-tuple))))
     `(org-level-5 ((t (,@headline ,@variable-tuple))))
     `(org-level-4 ((t (,@headline ,@variable-tuple :height 1.1))))
     `(org-level-3 ((t (,@headline ,@variable-tuple :height 1.25))))
     `(org-level-2 ((t (,@headline ,@variable-tuple :height 1.5))))
     `(org-level-1 ((t (,@headline ,@variable-tuple :height 1.75))))
     `(org-document-title ((t (,@headline ,@variable-tuple :height 2.0 :underline nil))))
     ))
  (with-eval-after-load "ox-latex"
    (add-to-list 'org-latex-classes
		 '("koma-book-no-part" "\\documentclass[11pt]{scrbook}"
;		   ("\\part{%s}" . "\\part*{%s}") 
		   ("\\chapter{%s}" . "\\chapter*{%s}")
		   ("\\section{%s}" . "\\section*{%s}")
		   ("\\subsection{%s}" . "\\subsection*{%s}")
		   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		   ("\\paragraph{%s}" . "\\paragraph*{%s}")
		   ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
		 )
    (add-to-list 'org-latex-classes
		 '("koma-book" "\\documentclass[11pt]{scrbook}"
		   ("\\part{%s}" . "\\part*{%s}") 
		   ("\\chapter{%s}" . "\\chapter*{%s}")
		   ("\\section{%s}" . "\\section*{%s}")
		   ("\\subsection{%s}" . "\\subsection*{%s}")
		   ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		   ("\\paragraph{%s}" . "\\paragraph*{%s}")
		   ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
		 ))
  )
(use-package org-contrib
  :straight t
  :after org)

(use-package org-bullets
  :straight t
  :config
  (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1))))
