;; FROM: [0] me, messing things up
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes '(wombat))
 '(package-selected-packages '(org-pdftools pdf-tools magit elfeed)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(when (version<= "26.0.50" emacs-version )
  (global-display-line-numbers-mode))

;; FROM: [1] http://whattheemacsd.com/ 
;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; FROM: [1]
;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; FROM: [2] https://stackoverflow.com/questions/9383070/tell-emacs-never-to-insert-tabs
(setq-default indent-tabs-mode nil)

;; FROM: [3] https://www.emacswiki.org/emacs/MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; FROM: [4]
(global-set-key (kbd "C-x w") 'elfeed)
