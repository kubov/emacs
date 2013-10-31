(add-to-list 'load-path "~/emacs")

(require 'setup-load-paths)
(require 'load-libraries)
(require 'user-functions)
(require 'user-settings)
(require 'user-keys)
(require 'user-faces)
(require 'powerline)
(require 'paredit)
(require 'rainbow-delimiters)
(require 'cc-mode)
(require 'yasnippet)
(require 'package)

(custom-set-variables
 '(haskell-mode-hook (quote (turn-on-haskell-indent))))

(setq inferior-lisp-program "/usr/bin/sbcl") 


(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))

(paredit-mode)
(load-theme 'misterioso)
(powerline-default-theme)
(rainbow-delimiters-mode-enable)

(yas-global-mode 1)
(setf flymake-mode t)

(defun vlad-cc-style()
  (c-set-style "linux")
  (c-set-offset 'innamespace '0)
  (c-set-offset 'inextern-lang '0)
  (c-set-offset 'inline-open '0)
  (c-set-offset 'label '*)
  (c-set-offset 'case-label '*)
  (c-set-offset 'access-label '/)
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
)

(add-hook 'c++-mode-hook 'vlad-cc-style)
