;; Tell emacs to place Custom generated files under custom.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Meta key fix on MacOS
(when (eq system-type 'darwin)
  (setq ns-option-modifier 'meta)
  (setq ns-command-modifier 'super))

;; Remove top bar
(menu-bar-mode -1)

;; Disable backup files, autosave file  and lock files
(setq make-backup-files nil)
(setq auto-save-default nil)
(setq create-lockfiles nil)

;; Sensible defaults
(setq-default
 indent-tabs-mode nil        ;; spaces over tabs
 tab-width 4                 ;; 4 spaces per tab
 fill-column 80)             ;; wrap at 80 chars

(setq
 inhibit-startup-screen t    ;; no splash screen
 ring-bell-function 'ignore  ;; no annoying bell
 use-short-answers t         ;; y/n instead of yes/no
 display-line-numbers-type 'relative) ;; relative line numbers (vim style!)

(global-display-line-numbers-mode 1)  ;; line numbers everywhere
(electric-pair-mode 1)                ;; auto close brackets/quotes
(show-paren-mode 1)                   ;; highlight matching parens
(save-place-mode 1)                   ;; remember cursor position in files
(recentf-mode 1)                      ;; track recently opened files
(global-auto-revert-mode 1)           ;; auto reload files changed on disk

;; Init package system
(require 'package)

;; Define repositories
(setq package-archives '(
  ("melpa" . "https://melpa.org/packages/")   ;; Community packages
  ("org" . "https://orgmode.org/elpa/")       ;; Latest org mode
  ("elpa" . "https://elpa.gnu.org/packages/") ;; Official melpa
))

;; Activate installed packages
;; and refresh package list cache when needed
(package-initialize)
(unless package-archive-contents
  (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
  (package-install 'use-package))

;; Auto install packages if missing (config helper)
(require 'use-package)
(setq use-package-always-ensure t)

;; load lisp/ folder with other configs
(add-to-list 'load-path (expand-file-name "lisp/" user-emacs-directory))
(load "themes")
