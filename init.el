(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(custom-enabled-themes (quote (dichromacy)))
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

; File name in taskbar
(setq frame-title-format "%b - emacs")

; "The columns, Duke, the columns!"
(column-number-mode) 

; Various indent stuff
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(setq indent-line-function 'insert-tab)
; Ug. Why does everyone use 4 spaces for python...
(add-hook 'python-mode-hook '(lambda ()
                               (setq python-indent 4)))
(add-hook 'java-mode-hook (lambda ()
                            (setq c-basic-offset 2)))
(setq js-indent-level 2)

; PHP-mode
;(add-to-list 'load-path "~/elisp")
;;(load "php-mode")

; Octave-mode
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
(cons '("\\.m$" . octave-mode) auto-mode-alist))

;; Shift-direction to move between windows 
(windmove-default-keybindings)

; Multi-web-mode
(add-to-list 'load-path "~/.emacs.d/multi-web-mode")
(require 'multi-web-mode)
   (setq mweb-default-major-mode 'html-mode)
   (setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                                            (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                      (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
   (setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
   (multi-web-global-mode 1)

; Evil-mode
(add-to-list 'load-path "~/.emacs.d/evil-mode")
(require 'evil)
(evil-mode 0)

 ;; Lua-mode.el
(add-to-list 'load-path "~/.emacs.d/lua-mode")
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))
