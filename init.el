;; ʹ�ñ��ļ��Ĳ���
;; 1. ��װ���°��emacs
;; 2. ��װirony M-x package-install RET irony RET

;;(require 'package)
;;(package-initialize)
(add-to-list'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)


(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

(when (boundp 'w32-pipe-read-delay)
  (setq w32-pipe-read-delay 0))
;; Set the buffer size to 64K on Windows (from the original 4K)
(when (boundp 'w32-pipe-buffer-size)
  (setq irony-server-w32-pipe-buffer-size (* 64 1024)))


;;(desktop-save-mode 1)

(load-theme 'wombat t)


(set-face-attribute 'default nil :font "Consolas 12")
 
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
                      charset
                      (font-spec :family "Microsoft Yahei" :size 12)))


;;===============================================================  
;;�������  
;;===============================================================  
;; ȥ��������  
(set-scroll-bar-mode nil)  
;;�رտ�������  
(setq inhibit-startup-message t)  

  
;;remove alert-bell  
(mouse-wheel-mode t)
(global-linum-mode 'linum-mode)  
;;auto show row-num  
;;�Զ������к�  
  
  
;;======================================================================  
;;״̬��  
;;======================================================================  
;;��ʾʱ��  
;;(display-time)  
(display-time-mode 1);;����ʱ����ʾ���ã���minibuffer������Ǹ�����  
(setq display-time-24hr-format t);;ʱ��ʹ��24Сʱ��  
(setq display-time-day-and-date t);;ʱ����ʾ�������ں;���ʱ��  
;;(setq display-time-use-mail-icon t);;ʱ�����Ա������ʼ�����  
;;(setq display-time-interval 10);;ʱ��ı仯Ƶ�ʣ���λ�������ţ�  
  
  
;;��ʾ�к�  
(setq column-number-mode t)  
;;û�������ʾ�к�,��f3��ʾ/�����к�  
;;(require 'setnu)  
;;(setnu-mode t)  
;;(global-set-key[f3] (quote setnu-mode))  
  
;;��ʾ������ %f ����������·�� %p ҳ��ٷ��� %l �к�  
(setq frame-title-format "%f")  

;;=======================================================================  
;;������  
;;=====================================================================  
;;�趨�о�  
(setq default-line-spaceing 4)  
;;ҳ��  
(setq default-fill-column 60)  
;;ȱʡģʽ text-mode  
;;(setq default-major-mode 'text-mode)  
;;����ɾ����¼  
(setq kill-ring-max 200)  
;;�Կ��н���  
;;(setq require-final-newline t)  
;;�����﷨������  
(global-font-lock-mode 1)  
;;������ʾ����ѡ��  
(transient-mark-mode t)  
;;ҳ��ƽ������,scroll-margin 3 ������Ļ����3�п�ʼ���������ÿ��Կ���������  
;;(setq scroll-margin 3 scroll-consrvatively 10000)  
;;������ʾ�ɶ�����  
(show-paren-mode t)  
(setq show-paren-style 'parentheses)  
;;���ָ��ܹ��  
(mouse-avoidance-mode 'animate)  
;;ճ���ڹ�괦,���������ָ�봦  
(setq mouse-yank-at-point t)

;; ɾ������
(setq kill-whole-line t)

;;=======================================================================  
;;������  
;;=======================================================================  
;;��������  
(setq visible-bell t)  
;;ʹ��y or n����  
(fset 'yes-or-no-p 'y-or-n-p)  
;;�����и�  
(setq resize-mini-windows nil)  
;;�ݹ�minibuffer  
(setq enable-recursive-minibuffers t)  
;;��ʹ��M-x COMMAND�󣬹�1����ʾ��COMMAND�󶨵ļ�  
(setq suggest-key-bindings -1)   ;;Ĭ�ϣ�  
  
;;======================================================================  
;;�༭�����趨  
;;======================================================================  
;;�����������ļ�  
(setq make-backup-files nil)  
;;��������ʱ�ļ�  
(setq-default make-backup-files nil)  
;;ֻ��Ⱦ��ǰ��Ļ�﷨�������ӿ���ʾ�ٶ�  
(setq lazy-lock-defer-on-scrolling t)  
;;(setq font-lock-support-mode 'lazy-lock-mode)  
(setq font-lock-maximum-decoration t)  
;;��������Ϣ��ʾ�ڻ�����  
(condition-case err  
    (progn  
      (require 'xxx))  
  (error  
   (message "Can't load xxx-mode %s" (cdr err))))  
;;ʹ��X������  
(setq x-select-enable-clipboard t)  
;;�趨����������ݸ�ʽ ��ӦFirefox  
(set-clipboard-coding-system 'ctext)  
  
;;����TAB���Ϊ4  
(setq default-tab-width 4)   
;;������������  
;;��tab����  
(setq indent-tabs-mode t)  
(setq c-indent-level 4)  
(setq c-continued-statement-offset 4)  
(setq c-brace-offset -4)  
(setq c-argdecl-indent 4)  
(setq c-label-offset -4)  
(setq c-basic-offset 4)  
(global-set-key "\C-m" 'reindent-then-newline-and-indent)  











(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(display-time-mode t)
 '(package-selected-packages (quote (yasnippet irony)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-library "keymap.el")
