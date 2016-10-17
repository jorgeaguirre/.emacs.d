;;; package --- evil

;;; Commentary:
;;; evil-mode keybindings.

;;; Code:
(use-package evil
  :init
  (setq evil-ex-search-vim-style-regexp t
        evil-search-module 'evil-search
        evil-want-C-u-scroll t
        evil-auto-balance-windows t
        evil-want-Y-yank-to-eol nil)
  (setq-default evil-shift-width 2)

  (evil-mode t)

  :config
  (defvar general-default-keymaps)
  (setq general-default-keymaps 'evil-normal-state-map)

  (general-define-key :keymaps '(evil-normal-state-map evil-motion-state-map)
                      "C-h" 'evil-window-left
                      "C-j" 'evil-window-down
                      "C-l" 'evil-window-right
                      "C-k" 'evil-window-up)

  (general-define-key :keymaps 'evil-normal-state-map
                      "-" 'dired-jump)

  (evil-ex-define-cmd "W" "write")
  (evil-ex-define-cmd "Q" "quit")

  (defun my-linum-relative-toggle ()
    (interactive)
    (if (and (boundp 'linum-mode) linum-mode)
        (linum-relative-toggle)
      (progn
        (linum-mode)
        (linum-relative-toggle))))

  (use-package evil-commentary
    :init
    (evil-commentary-mode))

  (use-package evil-iedit-state
    :commands evil-iedit-state/iedit-mode)

  (use-package evil-matchit
    :init
    (global-evil-matchit-mode 1))

  (use-package evil-numbers
    :commands (evil-numbers/inc-at-pt evil-numbers/dec-at-t))

  (use-package evil-surround
    :init
    (global-evil-surround-mode 1)))
;;; evil.el ends here
