;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!

(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Keith Woo"
      user-mail-address "995228841@qq.com")

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
;;(setq doom-theme 'doom-one)
(setq doom-theme 'doom-gruvbox)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type 'relative)


(setq projectile-generic-command
      "rg -0 --files --color=never --hidden --glob '!~/.emacs.d/.local/'
      --glob '!.idea' --glob '!.ensime_cache' --glob '!.eunit' --glob '!.git'
      --glob '!.hg' --glob '!.fslckout' --glob '!_FOSSIL_' --glob '!.bzr'
      --glob '!_darcs' --glob '!.tox' --glob '!.svn' --glob '!.stack-work'
      --glob '!node_modules' --glob '!docs' --glob '!handbook' --glob '!tutorials'
      --glob '!*.md' --glob '!bin' --glob 'obj'"
      )

(setq projectile-git-command
      projectile-generic-command)

;; doom-modeine
(setq inhibit-compacting-font-caches t );; Don’t compact font caches during GC.
(setq find-file-visit-truename t)

;; Define your custom doom-modeline
;(doom-modeline-def-modeline 'my-simple-line
;  '(bar matches buffer-info remote-host buffer-position parrot selection-info)
;  '(misc-info minor-modes input-method buffer-encoding major-mode process vcs checker))

;; Add to `doom-modeline-mode-hook` or other hooks
;(defun setup-custom-doom-modeline ()
;   (doom-modeline-set-modeline 'my-simple-line 'default))
;(add-hook 'doom-modeline-mode-hook 'setup-custom-doom-modeline)
;; end doom-modeline

;; csharp-lsp
(setq lsp-csharp-server-install-dir "/usr/local/bin/omnisharp-roslyn" )
(setq lsp-csharp-server-path (concat lsp-csharp-server-install-dir "/v1.37.5/run") )


;; python
(setq +python-ipython-repl-args '("-i" "--simple-prompt" "--no-color-info"))
(setq +python-jupyter-repl-args '("--simple-prompt"))

(setq lsp-clients-python-library-directoriesa "~/.local/lib/python3.8/site-packages")
(setq lsp-pyls-server-command "~/.local/bin/pyls" )
;;end python
;;
;; start lsp-go
(setq lsp-gopls-server-path "~/.go/bin/gopls")

;; end lsp-go

;; company
(setq company-minimum-prefix-length 1
      company-idle-delay 0.0)

(after! company
  (let ((keymap company-active-map))
  (define-key keymap (kbd "TAB") 'company-complete-selection)
  (define-key keymap (kbd "<tab>") 'company-complete-selection)
  (define-key keymap [return] 'company-complete-selection)
  (define-key keymap (kbd "RET") 'company-complete-common-or-cycle)))
;; end company
;;
;; custom configuration

;; end custom configuration

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c g k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c g d') to jump to their definition and see how
;; they are implemented.



(load! "+winum.el")
(load! "+pyim.el")
