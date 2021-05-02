;; minimalizing emacs
  ;; disable backups
  (setq make-backup-files nil)

  ;; disable auto-save
  (auto-save-mode -1)

  ;; disable menu-bar
  (menu-bar-mode -1)

  ;; disable auto-save, parte deux
  (setq auto-save-default nil)

  ;; minimalizing this file
  (setq custom-file "~/.custom")
  (load custom-file)

;; setting variables
  (setq erc-nick "zukireta")
  (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

  ;; initializing packages
    (require 'package)
    (setq package-list
	  '(jedi 2048-game))
    (package-initialize)

    ;; fetch the list of packages available
    (unless package-archive-contents
      (package-refresh-contents))

    ;; install the missing packages
    (dolist (package package-list)
      (unless (package-installed-p package)
	(package-install package)))
