;; 使用本文件的步骤
;; 1. 安装最新版的emacs
;; 2. 安装irony M-x package-install RET irony RET

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
;;外观设置  
;;===============================================================  
;; 去掉滚动条  
(set-scroll-bar-mode nil)  
;;关闭开启画面  
(setq inhibit-startup-message t)  

  
;;remove alert-bell  
(mouse-wheel-mode t)
(global-linum-mode 'linum-mode)  
;;auto show row-num  
;;自动加载行号  
  
  
;;======================================================================  
;;状态栏  
;;======================================================================  
;;显示时间  
;;(display-time)  
(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上  
(setq display-time-24hr-format t);;时间使用24小时制  
(setq display-time-day-and-date t);;时间显示包括日期和具体时间  
;;(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置  
;;(setq display-time-interval 10);;时间的变化频率，单位多少来着？  
  
  
;;显示列号  
(setq column-number-mode t)  
;;没列左边显示行号,按f3显示/隐藏行号  
;;(require 'setnu)  
;;(setnu-mode t)  
;;(global-set-key[f3] (quote setnu-mode))  
  
;;显示标题栏 %f 缓冲区完整路径 %p 页面百分数 %l 行号  
(setq frame-title-format "%f")  

;;=======================================================================  
;;缓冲区  
;;=====================================================================  
;;设定行距  
(setq default-line-spaceing 4)  
;;页宽  
(setq default-fill-column 60)  
;;缺省模式 text-mode  
;;(setq default-major-mode 'text-mode)  
;;设置删除记录  
(setq kill-ring-max 200)  
;;以空行结束  
;;(setq require-final-newline t)  
;;开启语法高亮。  
(global-font-lock-mode 1)  
;;高亮显示区域选择  
(transient-mark-mode t)  
;;页面平滑滚动,scroll-margin 3 靠近屏幕边沿3行开始滚动，正好可以看到上下文  
;;(setq scroll-margin 3 scroll-consrvatively 10000)  
;;高亮显示成对括号  
(show-paren-mode t)  
(setq show-paren-style 'parentheses)  
;;鼠标指针避光标  
(mouse-avoidance-mode 'animate)  
;;粘贴于光标处,而不是鼠标指针处  
(setq mouse-yank-at-point t)

;; 删除整行
(setq kill-whole-line t)

;;=======================================================================  
;;回显区  
;;=======================================================================  
;;闪屏报警  
(setq visible-bell t)  
;;使用y or n提问  
(fset 'yes-or-no-p 'y-or-n-p)  
;;锁定行高  
(setq resize-mini-windows nil)  
;;递归minibuffer  
(setq enable-recursive-minibuffers t)  
;;当使用M-x COMMAND后，过1秒显示该COMMAND绑定的键  
(setq suggest-key-bindings -1)   ;;默认？  
  
;;======================================================================  
;;编辑器的设定  
;;======================================================================  
;;不产生备份文件  
(setq make-backup-files nil)  
;;不生成临时文件  
(setq-default make-backup-files nil)  
;;只渲染当前屏幕语法高亮，加快显示速度  
(setq lazy-lock-defer-on-scrolling t)  
;;(setq font-lock-support-mode 'lazy-lock-mode)  
(setq font-lock-maximum-decoration t)  
;;将错误信息显示在回显区  
(condition-case err  
    (progn  
      (require 'xxx))  
  (error  
   (message "Can't load xxx-mode %s" (cdr err))))  
;;使用X剪贴板  
(setq x-select-enable-clipboard t)  
;;设定剪贴板的内容格式 适应Firefox  
(set-clipboard-coding-system 'ctext)  
  
;;设置TAB宽度为4  
(setq default-tab-width 4)   
;;以下设置缩进  
;;用tab缩进  
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
