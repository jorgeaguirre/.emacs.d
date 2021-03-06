;;; package --- interface

;;; Commentary:
;;; Interface related settings.

;;; Code:
(setq-default Info-use-header-line nil
              isearch-lazy-highlight nil
              max-mini-window-height 0
              pop-up-windows t
              show-paren-style 'parenthesis
              show-paren-delay 0
              visible-bell t
              show-trailing-whitespace t
              uniquify-buffer-name-style 'forward
              uniquify-ignore-buffers-re "^\\*")

(set-display-table-slot standard-display-table 0 ?\ )

(use-package greymatters-theme
  :config
  (load-theme 'greymatters t))

 (mapc
  (lambda (face)
    (set-face-attribute face nil :weight 'normal :underline nil))
  (face-list))
;;; interface.el ends here
