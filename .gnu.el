;;configure Gmail
(setq user-full-name "KE SHEN")
(setq user-mail-address "mr.ke.shen@gmailcom")
(setq message-signature-file "./newsfan.sig")

;;set news group sever
(setq gnus-select-method '(nntp "news.newsfan.net"))
(add-to-list 'gnus-secondary-select-methods '(nntp "news.newsfan.net"))
;;(add-to-list 'gnus-secondary-select-methods '(nntp "news.gnus.org"))
;;(add-to-list 'gnus-secondary-select-methods '(nntp "news.gmane.org"))
;;(add-to-list 'gnus-secondary-select-methods '(nntp "news.aioe.org"))

;;new line when 71 chars
(add-hook 'message-mode-hook
	  (lambda () 
	    (setq fill-column 72)
	    (turn-on-auto-fill)))

(gnus-agentize)

(setq gnus-ignored-newsgroups "")
;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;set language environment
;;;;;;;;;;;;;;;;;;;;;;;;;;;
(set-language-environment 'UTF-8)
(setq default-buffer-file-coding-system 'utf-8-unix)
(setq default-keyboard-coding-system 'utf-8-unix)
(setq default-sendmail-coding-system 'utf-8-unix)
(setq default-file-name-coding-system 'utf-8-unix)
(setq default-terminal-coding-system 'utf-8-unix)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))

(setq gnus-default-charset 'chinese-iso-8bit
      gnus-group-name-charset-group-alist '((".*" . cn-gb-2312))
      gnus-summary-show-article-charset-alist 
       '((1 . cn-gb-2312)
	 (2 . gb18030)
	 (3 . Chinese-iso-8bit)
	 (4 . gbk)
	 (5 . big5)
	 (6 . utf-8))
       gnus-newsgroup-ignored-charsets
       '(unknown-8bit x-unknown iso-8859-1 gb18030 x-gbk))

;; gb18030 unknow encoding
(setq gnus-newsgroup-ignored-charsets 
      '(unknown-8bit x-unknown gb18030))

;;auto display image
(auto-image-file-mode)
(setq mm-inline-large-images t)
(add-to-list 'mm-attachment-override-types "image/*")

(setq gnus-select-method '(nnimap "gmail"
    (nnimap-address "imap.gmail.com")
    (nnimap-server-port 993)
    (nnimap-stream ssl)))

(setq mm-discouraged-alternatives '("text/html" "text/richtest"))

