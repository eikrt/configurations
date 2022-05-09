(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(package-initialize)
(package-refresh-contents)

;; Download Evil
(unless (package-installed-p 'evil)
  (package-install 'evil))
; Download treemacs
(unless (package-installed-p 'treemacs)
  (package-install 'treemacs))
(unless (package-installed-p 'treemacs-evil)
  (package-install 'treemacs-evil))
(unless (package-installed-p 'dashboard)
  (package-install 'dashboard))
(unless (package-installed-p 'lua-mode)
  (package-install 'lua-mode))
(unless (package-installed-p 'dumb-jump)
  (package-install 'dumb-jump))
(unless (package-installed-p 'helm)
  (package-install 'helm))
(unless (package-installed-p 'dracula-theme)
  (package-install 'dracula-theme))
(unless (package-installed-p 'minimap)
  (package-install 'minimap))
(unless (package-installed-p 'auto-complete)
  (package-install 'auto-complete))
(unless (package-installed-p 'shell-pop)
  (package-install 'shell-pop))
(unless (package-installed-p 'js2-mode)
  (package-install 'js2-mode))

; Javascript
(require 'js2-mode)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . js2-mode))

; Windmove
(when (fboundp 'windmove-default-keybindings)
  (windmove-default-keybindings))

; Tabs

(global-tab-line-mode t)
; Autocomplete

(global-auto-complete-mode t)


; Minimap

(setq minimap-window-location 'right)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minimap-active-region-background ((((background dark)) (:background "#2A2A2A222222")) (t (:background "#D3D3D3222222"))) nil :group))

; Theming

(load-theme 'dracula t)
(set-frame-font "Ubuntu Mono 12" nil t)

; Keybindings
(global-set-key (kbd "C-x t") 'treemacs)
(global-set-key (kbd "C-x g") 'dumb-jump-go)
(global-set-key (kbd "C-x l") 'helm-locate)
(global-set-key (kbd "M-x") 'helm-M-x)
; Dashboard
;; Set the title
(setq dashboard-banner-logo-title "Welcome to Emacs!")
; Set the banner
(setq dashboard-startup-banner "~/repo/configurations/media/icons/mursu_tietokoneella.png")
;; Content is not centered by default. To center, set
(setq dashboard-center-content t)
(setq dashboard-set-footer nil)

;; Enable Evil
(require 'evil)
(evil-mode 1)
(define-key evil-insert-state-map "j" #'cofi/maybe-exit)
(evil-define-command cofi/maybe-exit ()
  :repeat change
  (interactive)
  (let ((modified (buffer-modified-p)))
    (insert "j")
    (let ((evt (read-event (format "Insert %c to exit insert state" ?j)
               nil 0.5)))
      (cond
       ((null evt) (message ""))
       ((and (integerp evt) (char-equal evt ?j))
    (delete-char -1)
    (set-buffer-modified-p modified)
    (push 'escape unread-command-events))
       (t (setq unread-command-events (append unread-command-events
                          (list evt))))))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil))
 '(shell-pop-autocd-to-working-dir t)
 '(shell-pop-default-directory "~/repo")
 '(shell-pop-universal-key "C-x s")
 '(shell-pop-window-position "bottom")
 '(warning-suppress-log-types '((comp) (comp)))
 '(warning-suppress-types '((comp) (comp))))

(require 'dashboard)
(dashboard-setup-startup-hook)
(add-hook 'xref-backend-functions #'dumb-jump-xref-activate)
