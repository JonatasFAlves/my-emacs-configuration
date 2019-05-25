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
  (setq which-key-sort-order 'which-key-key-order-alpha
        which-key-idle-delay 0.05))

(use-package yasnippet :ensure t
  :init
  (yas-global-mode 1))

(use-package company :ensure t
  :config
  (add-hook 'after-init-hook 'global-company-mode))



;; ========== ATALHOS ==========
(defun find-user-init-file ()
  "Edit the `user-init-file', in another window."
  (interactive)
  (find-file-other-window "~/.emacs.d/init.el"))

(global-set-key (kbd "C-c I") #'find-user-init-file)



;; ========== FUNCTIONS ==========
(defun my/capitalize-first-char (&optional string)
  "Capitalize only the first character of the input STRING."
  (when (and string (> (length string) 0))
    (let ((first-char (substring string nil 1))
          (rest-str   (substring string 1)))
      (concat (capitalize first-char) rest-str))))



;; ========== AUTO ==========
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(package-selected-packages
   (quote
    (company groovy-mode yasnippets yasnippet which-key use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 120 :width normal)))))



;; ========== VARIABLES ==========
(setq yas-ident-line "auto")

;; Remove the irritating bell sound. lol
(setq visible-bell 1)
