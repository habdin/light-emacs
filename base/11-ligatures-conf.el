;; 11-ligatures-conf.el ;; -*- lexical-binding: t; -*- ;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs version greater than 27.x running on GUI includes support for harfbuzz to properly   ;;
;; show ligatures and other utf-8 characters that can't 'directly' be shown on emacs versions ;;
;; earlier than 27.x.									      ;;
;; 											      ;;
;; Users on emacs greater than 27.x can without any workaround instructions show	      ;;
;; ligatures and emojis just by using a font that has these characters defined into it. In    ;;
;; order to get the same result on earlier emacs versions, some workaround instructions are   ;;
;; present on https://github.com/tonsky/FiraCode/wiki/Emacs-instructions and		      ;;
;; https://github.com/microsoft/cascadia-code/issues/153.				      ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;; Workaround instructions for Emacs versions prior to 27.x
(use-package fira-code-mode
  :defer t
  :straight t


  )

;; Enable ligature via the ligature.el melpa package
(use-package ligature
  :defer t
  :straight (ligature :type git :host github :repo "mickeynp/ligature.el")
  )

;; Check if Emacs is running on X-window system and execute code for ligature support
;; only for GUI-based Emacs.
(when (window-system)

  ;; Check for Emacs version less than or equal to 27.x
  (if (version<= "27.0" emacs-version)
      (add-hook 'prog-mode-hook #'fira-code-mode)
    ;; Enable ligatures in programming modes                                                           
    (ligature-set-ligatures 'prog-mode '("www" "**" "***" "**/" "*>" "*/" "\\\\" "\\\\\\" "{-" "::"
					 ":::" ":=" "!!" "!=" "!==" "-}" "----" "-->" "->" "->>"
					 "-<" "-<<" "-~" "#{" "#[" "##" "###" "####" "#(" "#?" "#_"
					 "#_(" ".-" ".=" ".." "..<" "..." "?=" "??" ";;" "/*" "/**"
					 "/=" "/==" "/>" "//" "///" "&&" "||" "||=" "|=" "|>" "^=" "$>"
					 "++" "+++" "+>" "=:=" "==" "===" "==>" "=>" "=>>" "<="
					 "=<<" "=/=" ">-" ">=" ">=>" ">>" ">>-" ">>=" ">>>" "<*"
					 "<*>" "<|" "<|>" "<$" "<$>" "<!--" "<-" "<--" "<->" "<+"
					 "<+>" "<=" "<==" "<=>" "<=<" "<>" "<<" "<<-" "<<=" "<<<"
					 "<~" "<~~" "</" "</>" "~@" "~-" "~>" "~~" "~~>" "%%"))))
