
;; (setq slime-lisp-implementations
;;       (append slime-lisp-implementations
;;               `((clojure ,(swank-clojure-cmd) :init swank-clojure-init))))

(setq slime-net-coding-system 'utf-8-unix)

(setq common-lisp-hyperspec-root
      "file://localhost/usr/share/doc/hyperspec/HyperSpec/")
;(add-to-list 'package-archives '("elpa" . "http://tromey.com/elpa/"))
;(add-to-list 'package-archives '("technomancy" . "http://repo.technomancy.us/emacs/") t)



(global-ede-mode 1)                      ; Enable the Project management system

					;(semantic-add-system-include "/usr/lib64/gcc/x86_64-pc-linux-gnu/4.4.5/include/g++-v4/" 'c++-mode)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(transient-mark-mode -1)

(ido-mode t)
(icomplete-mode t)

(column-number-mode 1)
(global-linum-mode 1)

(unless (server-running-p) 
  (server-start))

(show-paren-mode 1)

(setq auto-insert-mode t
      backup-directory-alist (list (cons ".*" (expand-file-name "~/.backups/")))
      browse-url-browser-function (quote browse-url-generic)
      browse-url-generic-program "firefox"
      compilation-window-height 10
      compilation-scroll-output t
      dabbrev-case-distinction t
      dabbrev-case-fold-search t
      dabbrev-case-replace t
      dabbrev-upcase-means-case-search t
      eldoc-argument-case (quote downcase)
      eldoc-idle-delay 0.1
      imaxima-tex-program "latex"
      inhibit-splash-screen t
      inhibit-startup-echo-area-message "kubov"
      initial-buffer-choice "~/"
      ispell-dictionary "pl"
      ispell-local-dictionary-alist nil
      ispell-program-name "/usr/bin/aspell"
      list-directory-brief-switches "-CFX --group-directories-first"
      list-directory-verbose-switches "-lX --group-directories-first"
      longlines-wrap-follows-window-size t
      message-generate-headers-first (quote (t))
      pascal-auto-lineup nil
      pascal-indent-nested-functions nil
      pascal-tab-always-indent nil
      safe-local-variable-values (quote ((Syntax . Common-Lisp) (Base . 10) (Syntax . ANSI-Common-Lisp) (Syntax . Common-Lisp)))      
      slime-complete-symbol-function (quote slime-fuzzy-complete-symbol)
      spell-command "aspell"
      w3m-use-cookies t)

(setq-default major-mode 'org-mode)

(put 'narrow-to-region 'disabled nil)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)


(add-hook 'lisp-mode-hook 'dwim-shared-lisp-mode-hook)


(provide 'user-settings)
