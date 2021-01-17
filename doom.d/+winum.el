;;; ~/.doom.d/+winum.el -*- lexical-binding: t; -*-
(require 'winum)
(defun winum-assign-0-to-treemacs ()
  (when (string-match-p " \\*Treemacs-.*" (buffer-name)) 10))
(+treemacs/toggle)
(setq winum-auto-assign-0-to-minibuffer nil)
(add-to-list 'winum-assign-functions #'winum-assign-0-to-treemacs)
(setq winum-assign-func #'winum-assign-0-to-treemacs )
(set-face-attribute 'winum-face nil :weight 'bold)
(setq
      winum-reverse-frame-list          nil
      winum-auto-assign-0-to-minibuffer nil
     ;winum-assign-func                 'winum-assign-functions
      winum-auto-setup-mode-line        t
      winum-mode-line-position          1
      winum-ignored-buffers             '(" *which-key*")
      winum-ignored-buffers-regexp      '(" \\*Neomacs-.*"))
(+treemacs/toggle)
