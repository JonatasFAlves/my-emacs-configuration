;; Inicializa pacotes baixados pelo MELPA
;; é interessante configurar o package-initialize com package-load-list
;; para que use-package realize o lazy loading dos pacotes
(package-initialize)

;; Adiciona pacote de arquivos MELPA
;; M-x package-install RET -> nome-do-pacote
;;(Require 'package) -> package-initilialize 
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))


;; ========== PACOTES ==========
;;(eval-when-compile -> package-initilialize 
;;(require 'use-package)) -> package-initilialize 
(use-package which-key :ensure t
  :init
  (which-key-mode)
  :config
  (which-key-setup-side-window-right-bottom)
  (setq which-key-sort-order 'which-key-key-order-alpha
        which-key-side-window-max-width 0.33
        which-key-idle-delay 0.05)
  )

(use-package yasnippet :ensure t
  :init
  (yas-global-mode 1)
  )



;; ========== ATALHOS ==========
;; Adiciona atalho para abrir user-init-file
(defun find-user-init-file ()
  "Edit the `user-init-file', in another window."
  (interactive)
  (find-file-other-window "~/.emacs.d/init.el"))

(global-set-key (kbd "C-c I") #'find-user-init-file)



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (yasnippets yasnippet which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.

 ;; Set default font
 ;; Options -> Set Default Font;
 ;; Options -> Save Options.
 ;; Font size in height: x/10pt, that means, 120height/10pt -> 12pt
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal
			:weight normal :height 120 :width normal)))))
