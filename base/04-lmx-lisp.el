;;; 04-lmx-lisp.el -*- lexical-binding: t; -*-

(use-package dash-functional
  :straight t)

(defun fix-doom-modeline (frame)
  "Fix doom modeline to make it show modeline icons when Emacs is started as daemon.
FRAME is the name of the frame."
  (with-selected-frame frame
    (when (display-graphic-p)
      (setq doom-modeline-icon t))))

(defun lmx-load-theme (theme)
  "Load downloaded theme."
  (interactive
   (list
    (intern (completing-read "Load custom theme: "
			     (mapcar #'symbol-name
				     (custom-available-themes))))))
  (load-theme theme t))

;; The next functions configure fira-code font workaround for proper
;; Emacs integration.

(defun my-correct-symbol-bounds (pretty-alist)
  "Prepend a TAB character to each symbol in this alist,
	      this way compose-region called by prettify-symbols-mode
	      will use the correct width of the symbols
	      instead of the width measured by char-width."
  (mapcar (lambda (el)
	    (setcdr el (string ?\t (cdr el)))
	    el)
	  pretty-alist))

(defun my-ligature-list (ligatures codepoint-start)
  "Create an alist of strings to replace with
	      codepoints starting from codepoint-start."
  (let ((codepoints (-iterate '1+ codepoint-start (length ligatures))))
    (-zip-pair ligatures codepoints)))

(setq my-fira-code-ligatures
      (let* ((ligs '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\"
		     "{-" "[]" "::" ":::" ":=" "!!" "!=" "!==" "-}"
		     "--" "---" "-->" "->" "->>" "-<" "-<<" "-~"
		     "#{" "#[" "##" "###" "####" "#(" "#?" "#_" "#_("
		     ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*"
		     "/**" "/=" "/==" "/>" "//" "///" "&&" "||" "||="
		     "|=" "|>" "^=" "$>" "++" "+++" "+>" "=:=" "=="
		     "===" "==>" "=>" "=>>" "<=" "=<<" "=/=" ">-" ">="
		     ">=>" ">>" ">>-" ">>=" ">>>" "<*" "<*>" "<|" "<|>"
		     "<$" "<$>" "<!--" "<-" "<--" "<->" "<+" "<+>" "<="
		     "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<" "<~"
		     "<~~" "</" "</>" "~@" "~-" "~=" "~>" "~~" "~~>" "%%"
		     "x" ":" "+" "+" "*")))
	(my-correct-symbol-bounds (my-ligature-list ligs #Xe100))))

(defun my-set-fira-code-ligatures ()
  (setq prettify-symbols-alist
	(append my-fira-code-ligatures prettify-symbols-alist))
  (prettify-symbols-mode))

(defun my-check-extension (extension)
  "Check the file extension for the current buffer filename"
  (string= (file-name-extension buffer-file-name) extension))

(defun my-skewer-enable ()
  "Enables skewer-mode html or css for files with respective file extensions."
  (cond ((my-check-extension "html")
	 (skewer-html-mode 1))
	((my-check-extension "css")
	 (skewer-css-mode 1)))
  )
