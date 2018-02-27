(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(exec-path-from-shell-variables (quote ("PATH" "MANPATH" "PS1")))
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("marmalade" . "https://marmalade-repo.org/packages/")
     ("melpa-stable" . "https://stable.melpa.org/packages/"))))
 '(package-selected-packages (quote (exec-path-from-shell better-defaults))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; https://www.emacswiki.org/emacs/ELPA
(setq package-enable-at-startup nil)
(package-initialize)

;; https://github.com/technomancy/better-defaults
(require 'better-defaults)

(menu-bar-mode t)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode t))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode t))
(when (fboundp 'horizontal-scroll-bar-mode)
  (horizontal-scroll-bar-mode t))

;; https://github.com/purcell/exec-path-from-shell
(require 'exec-path-from-shell)
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))
