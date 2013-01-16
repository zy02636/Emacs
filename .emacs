(set-background-color "black") ;; 使用黑色背景
(set-foreground-color "white") ;; 使用白色前景
(set-face-foreground 'region "green")  ;; 区域前景颜色设为绿色
(set-face-background 'region "blue") ;; 区域背景色设为蓝色
;; 指针颜色设置为白色
(set-cursor-color "white")
;; 鼠标颜色设置为白色
(set-mouse-color "white")

;; 在标题栏提示你目前在什么位置
(setq frame-title-format "NEO SHEN@%b")  

;; 去掉工具栏
(tool-bar-mode nil)

;;去掉菜单栏
(menu-bar-mode nil)

;; 去掉滚动栏
(scroll-bar-mode nil)

;;设置字体
(set-default-font " -bitstream-Courier 10 Pitch-normal-normal-normal-*-13-*-*-*-m-0-iso10646-1")

;; 显示列号
(setq column-number-mode t)
(setq line-number-mode t)

;; 回车缩进
(global-set-key "\C-m" 'newline-and-indent)
(global-set-key (kbd "C-<return>") 'newline)

;; 实现全屏效果，快捷键为f6
(global-set-key [f6] 'my-fullscreen) 
(defun my-fullscreen ()
(interactive)
(x-send-client-message
nil 0 nil "_NET_WM_STATE" 32
'(2 "_NET_WM_STATE_FULLSCREEN" 0))
)

;;缩进
(setq default-tab-width 4)
