;; Tabs
(setq-default tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(setq-default indent-tabs-mode t)
;; (setq-default indent-tabs-mode t)

;; Goodbye awful sound
(setq ring-bell-function 'ignore)

;; Delete the selection when I start to type
(delete-selection-mode 1)

;; Foreign packages
(when (>= emacs-major-version 24)
    (require 'package)
    (package-initialize)
    (add-to-list 'package-archives
				 '("melpa" . "http://melpa.milkbox.net/packages/") t))

;;
;; Backups
;;

;; windows dir
(if (eq system-type 'windows-nt)
    (setq backup-directory-alist `(("." . "d:/Dev/emacsbackup")))
)

;; macos dir
(if (eq system-type 'darwin)
    (setq backup-directory-alist `(("." . "~/Dev/emacsbackup")))
)

(setq backup-by-copying t)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (deeper-blue)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
