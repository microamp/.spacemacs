;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     asciidoc
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence nil
                      auto-completion-complete-with-key-sequence-delay 1.0
                      auto-completion-private-snippets-directory nil)
     better-defaults
     c-c++
     colors
     csv
     (dash :variables
           helm-dash-docset-newpath "/Users/microamp/Library/Application Support/Dash/DocSets")
     elfeed
     elixir
     emacs-lisp
     (git :variables
          git-magit-status-fullscreen t)
     (go :variables
         gofmt-command "goimports"
         go-tab-width 2
         go-use-gometalinter t)
     html
     ipython-notebook
     jabber
     (javascript :variables
                 js2-basic-offset 2
                 js-indent-level 2)
     lua
     (markdown :variables
               markdown-live-preview-engine 'vmd)
     (mu4e :variables
           mu4e-installation-path "/usr/local/Cellar/mu/HEAD/share/emacs/site-lisp/mu/mu4e")
     org
     osx
     puppet
     (python :variables
             python-enable-yapf-format-on-save t)
     rcirc
     restclient
     (scala :variables
            scala-auto-insert-asterisk-in-comments t
            scala-auto-start-ensime t)
     search-engine
     semantic
     (shell :variables
            shell-default-height 40
            shell-default-position 'bottom)
     shell-scripts
     sql
     syntax-checking
     version-control
     yaml)
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(anzu
                                      base16-theme
                                      beacon
                                      bm
                                      browse-at-remote
                                      dart-mode
                                      deft
                                      dictionary
                                      doom-themes
                                      emms
                                      emms-mode-line-cycle
                                      find-file-in-project
                                      floobits
                                      focus
                                      fzf
                                      go-direx
                                      go-errcheck
                                      go-playground
                                      godoctor
                                      groovy-mode
                                      helm-aws
                                      helm-emms
                                      helm-pt
                                      hl-todo
                                      howdoi
                                      jdee
                                      julia-mode
                                      julia-shell
                                      know-your-http-well
                                      labburn-theme
                                      magithub
                                      password-generator
                                      punpun-theme
                                      seoul256-theme
                                      smmry
                                      sr-speedbar
                                      tao-theme
                                      twittering-mode
                                      w3m
                                      zenburn-theme
                                      zone-nyan
                                      ztree)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '(evil-anzu
                                    evil-args
                                    evil-ediff
                                    evil-escape
                                    evil-exchange
                                    evil-iedit-state
                                    evil-indent-plus
                                    evil-lisp-state
                                    evil-local
                                    evil-magit
                                    evil-matchit
                                    evil-mc
                                    evil-nerd-commenter
                                    evil-numbers
                                    evil-org
                                    evil-search-highlight-persist
                                    evil-surround
                                    evil-tutor
                                    evil-unimpaired
                                    evil-visual-mark-mode
                                    evil-visualstar
                                    vi-tilde-fringe
                                    xterm-color)
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'. (default t)
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; One of `vim', `emacs' or `hybrid'. Evil is always enabled but if the
   ;; variable is `emacs' then the `holy-mode' is enabled at startup. `hybrid'
   ;; uses emacs key bindings for vim's insert mode, but otherwise leaves evil
   ;; unchanged. (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'.
   ;; (default '(recents projects))
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(base16-ocean
                         spacemacs-dark
                         base16-grayscale-dark
                         seoul256
                         tao-yang
                         base16-hopscotch
                         labburn)
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Office Code Pro"
                               :size 10
                               :weight normal
                               :width normal
                               :powerline-scale 1.0)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil `Y' is remapped to `y$'. (default t)
   dotspacemacs-remap-Y-to-y$ t
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f), `find-spacemacs-file' (SPC f e s), and
   ;; `find-contrib-file' (SPC f e c) are replaced. (default nil)
   dotspacemacs-use-ido nil
   ;; If non nil, `helm' will try to miminimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-micro-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup t
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native t
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 40
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil))

(defun define-keys (mode-map key-fn-pairs)
  (mapc (lambda (key-fn)
          (let ((key (kbd (car key-fn)))
                (function (car (cdr key-fn))))
            (define-key mode-map key function)))
        key-fn-pairs))

(defun apply-fn-to-modes (fn modes)
  (mapc (lambda (mode)
          (add-hook (intern (format "%s-hook" (symbol-name mode)))
                    fn))
        modes))

(defun add-hooks (mode-hook functions)
  (mapc (lambda (function)
          (add-hook mode-hook function))
        functions))

(defun vi-style-c-e (n)
  "Emulate vi's CTRL-E (show one more line at bottom of window)."
  (interactive "p")
  (scroll-up n))

(defun vi-style-c-y (n)
  "Emulate vi's CTRL-Y (show one more line at top of window.)"
  (interactive "p")
  (scroll-down n))

(defun go-get-project-root (go-path-src go-project-root)
  "Return the name of the Go project. e.g. github.com/gorilla/context"
  (if (string-prefix-p go-path-src go-project-root)
      (let* ((no-trailing-slash (s-chop-suffix "/" go-project-root))
             (go-project-root-short (s-chop-prefix go-path-src no-trailing-slash)))
        go-project-root-short)))

(defun go-set-oracle-scope ()
  "Update Go Oracle scope if the current project is a Go project."
  (interactive)
  (let* ((go-path-src (concat (getenv "GOPATH") "/src/"))
         (go-project-root (go-get-project-root go-path-src (projectile-project-root))))
    (if go-project-root
        (progn
          (setq go-oracle-scope go-project-root)
          (message (concat "Go Oracle scope set to " go-project-root))))))

(defun go-errcheck-project ()
  "Run errcheck recursively from the current project directory."
  (interactive)
  (let* ((go-path-src (concat (getenv "GOPATH") "/src/"))
         (go-project-root (go-get-project-root go-path-src (projectile-project-root))))
    (go-errcheck-pkg (concat go-project-root "/...") nil nil nil)))

(defun vc-annotate-current-buffer-head ()
  "Run vc-annotate on the current buffer."
  (interactive)
  (vc-annotate (buffer-file-name) "HEAD"))

(defun focus-then-maximise (buf-name)
  "Focus the buffer specified then maximise."
  (interactive)
  (progn
    (switch-to-buffer buf-name)
    (delete-other-windows)))

(defun switch-to-previous-buffer ()
  "Switch to the previous buffer."
  (interactive)
  (switch-to-buffer (car (helm-buffer-list))))

(defun switch-to-pprevious-buffer ()
  "Switch to the buffer previous to the previous buffer."
  (interactive)
  (switch-to-buffer (car (cdr (helm-buffer-list)))))

(defun split-and-search-in-proj ()
  "Split window vertically and search for the symbol at point in the current project."
  (interactive)
  (progn
    (split-window-right-and-focus)
    (spacemacs/helm-project-do-ag-region-or-symbol)))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init'.  You are free to put any
user code."
  )

(defun render-html-message ()
  (let ((dom (libxml-parse-html-region (point-min) (point-max))))
    (erase-buffer)
    (shr-insert-document dom)
    (goto-char (point-min))))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
 This function is called at the very end of Spacemacs initialization after
layers configuration. You are free to put any user code."
  ;; On OS X, remap left Command to Meta
  (setq mac-option-modifier 'meta
        mac-command-modifier 'meta
        mac-right-command-modifier 'super
        mac-function-modifier 'hyper)

  ;; Scroll margin
  (setq-default scroll-margin 0)

  ;; Cursor to blink!
  (blink-cursor-mode)

  ;; Overwrite highlighted
  (delete-selection-mode t)

  ;; Remove trailing whitespace on save
  (add-to-list 'write-file-functions 'delete-trailing-whitespace)

  ;; Split vertically by default
  (setq split-width-threshold nil)

  ;; Web browser
  (setq browse-url-browser-function 'browse-url-generic
        engine/browser-function 'browse-url-generic
        browse-url-generic-program "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome")

  ;; Powerline: current time
  (setq display-time-string-forms
        '((substring year -4)
          "-"
          (format "%02d" (string-to-number month))
          "-"
          (format "%02d" (string-to-number day))
          " "
          24-hours
          ":"
          minutes))
  (display-time-mode t)

  ;; Powerline: battery life
  (fancy-battery-mode t)

  ;; Turn off purpose-mode (on by default)
  (spaceline-toggle-purpose)

  ;; Powerline: separator style
  (setq powerline-default-separator nil)

  ;; Set kill ring max size
  (setq kill-ring-max 20)

  ;; Highlight current line (on by default)
  (spacemacs/toggle-highlight-current-line-globally-on)

  ;; Disable auto-save
  (setq auto-save-timeout nil)

  ;; "Dark variants range from 233 to 239 and light variants range from 252 to 256"
  ;;(setq seoul256-background 239)

  ;; Package settings: ace-window
  (use-package ace-window
    :defer t)

  ;; Package settings: alchemist
  (use-package alchemist
    :bind (:map alchemist-iex-mode-map
                ("C-l" . alchemist-iex-clear-buffer)))

  ;; Package settings: anzu
  (use-package anzu
    :init
    (global-anzu-mode))

  ;; Package settings: bm
  (use-package bm
    :bind (("C-M-;" . bm-toggle)
           ("C-M-," . bm-next)
           ("C-M-<" . bm-previous)))

  ;; Package settings: deft
  (use-package deft
    :defer t
    :init
    (setq deft-recursive t
          deft-use-filename-as-title t
          deft-auto-save-interval 0.0
          deft-directory "~/Dropbox/.deft"
          deft-extensions (quote ("txt" "text" "md" "markdown" "org" "gpg")))
    :config
    (progn
      (define-keys deft-mode-map
        '(("C-g" ibuffer-quit)
          ("C-k" deft-filter-clear)
          ("M-q" ibuffer-quit)))))
  (advice-add 'deft :after #'deft-filter-clear)
  (advice-add 'deft :after #'deft-refresh)

  ;; Package settings: emms
  (use-package emms
    :defer t
    :init
    (setq emms-source-file-default-directory "~/Music")
    :config
    (progn
      (require 'emms-setup)
      (require 'emms-mode-line-cycle)
      (require 'emms-mode-line-icon)
      (emms-all)
      (emms-default-players)
      (emms-mode-line-enable)
      (emms-playing-time-disable-display)
      (emms-mode-line-cycle 1)))

  ;; Package settings: elfeed
  (use-package elfeed
    :defer t
    :init
    (setq elfeed-feeds
          '(("http://planet.emacsen.org/atom.xml" emacs)
            ("http://feeds.feedburner.com/ClPlBl" gcp)))
    :config
    (progn
      (global-set-key [remap elfeed-goodies/show-ace-link] 'scroll-down-command)
      (global-set-key [remap elfeed-goodies/split-show-next] 'next-line)
      (global-set-key [remap elfeed-goodies/split-show-prev] 'previous-line)))

  ;; Package settings: ensime-mode
  (use-package ensime-mode
    :defer t
    :init
    (setq ensime-startup-snapshot-notification nil)
    :bind (("C-c C-b b" . sbt-command)
           ("C-c C-b i" . ensime-sbt-switch)
           ("C-c C-d A" . ensime-db-attach))
    :config
    (progn
      (evil-leader/set-key-for-mode 'scala-mode
        "bs" 'sbt-send-region)
      ;; TODO: Define key bindings for ensime-forward-note and ensime-backward-note
      (global-set-key [remap ensime-forward-note] 'vi-style-c-e)
      (global-set-key [remap ensime-backward-note] 'vi-style-c-y)))

  ;; Package settings: w3m
  (use-package w3m
    :defer t
    :config
    (progn
      (global-set-key [remap w3m-copy-buffer] 'vi-style-c-e)))

  ;; Package settings: eww
  (use-package eww
    :defer t
    :config
    (define-keys eww-mode-map
      '(("M-n" vi-style-c-e)
        ("M-p" vi-style-c-y))))

  ;; Package settings: cc-mode
  (use-package cc-mode
    :defer t
    :config
    (progn
      (add-hook 'before-save-hook (lambda ()
                                    (when (eq major-mode 'c-mode)
                                      (clang-format-buffer))))
      (global-set-key [remap xref-find-definitions] 'dumb-jump-go)))

  ;; Package settings: go-mode
  (use-package go-mode
    :defer t
    :config
    (progn
      (use-package godoctor
        :config
        (evil-leader/set-key-for-mode 'go-mode
          "dd" 'godoctor-godoc
          "de" 'godoctor-extract
          "dr" 'godoctor-rename
          "dt" 'godoctor-toggle))
      (use-package go-errcheck)
      (use-package go-playground)
      (push '("^\*go-direx:"
              :regexp t
              :position right
              :width 0.5
              :dedicated t
              :stick t)
            popwin:special-display-config)
      (define-keys go-mode-map
        '(("M-." godef-jump)
          ("M-," pop-tag-mark)
          ("C-c C-e" go-errcheck-project)
          ("C-c C-p" go-playground)
          ("C-c C-j" helm-semantic-or-imenu)
          ("C-c j" go-direx-switch-to-buffer)))
      (evil-leader/set-key-for-mode 'go-mode
        "mjp" 'go-direx-pop-to-buffer
        "mjs" 'go-direx-switch-to-buffer
        "mE" 'go-errcheck-project)))

  ;; Package settings: helm-dash
  (use-package helm-dash
    :defer t
    :init
    (setq helm-dash-browser-func 'eww))

  ;; Package settings: jdee
  (use-package jdee
    :defer t
    :init
    (setq jdee-server-dir "~/src/jdee-server/target")
    :load-path "~/src/jdee-server/target"
    :config
    (progn
      (define-keys jdee-mode-map
        '(("M-." jdee-open-class-at-point)
          ("M-," pop-tag-mark)))))

  ;; Package settings: js2-mode
  (use-package js2-mode
    :defer t
    :init
    (setq-default js2-basic-offset 2)
    (setq-default js2-indent-level 2))

  ;; Package settings: julia-mode
  (use-package julia-mode
    :defer t
    :config
    (progn
      (require 'julia-shell)
      (define-keys julia-mode-map
        '(("C-c C-z" run-julia)
          ("C-c C-c" julia-shell-run-region-or-line)
          ("C-c C-s" julia-shell-save-and-go)))))

  ;; Package settings: mu4e
  (use-package mu4e
    :defer t
    :init
    (progn
      ;; use imagemagick, if available
      (when (fboundp 'imagemagick-register-types)
        (imagemagick-register-types))
      (setq
       ;; Path to Maildir directory
       mu4e-maildir "~/Maildir"

       mu4e-sent-folder   "/[Gmail].Sent Mail"
       mu4e-drafts-folder "/[Gmail].Drafts"
       mu4e-trash-folder  "/[Gmail].Trash"

       ;; Maildirs you use frequently; access them with 'j' (jump)
       mu4e-maildir-shortcuts
       '(("/[Gmail].All Mail"  . ?i)
         ("/[Gmail].Sent Mail" . ?s)
         ("/[Gmail].Drafts"    . ?d)
         ("/[Gmail].Trash"     . ?t))

       ;; List of email addresses
       mu4e-user-mail-address-list '("microamplifier@gmail.com")

       mu4e-headers-fields
       '((:date    . 25) ;; Alternatively, use :human-date
         (:flags   .  6)
         (:from    . 22)
         (:subject . nil))

       ;; Program to fetch mail (offlineimap)
       mu4e-get-mail-command "offlineimap"

       ;; Update every 5 minutes
       mu4e-update-interval (* 60 5)

       mu4e-reply-to-address "microamplifier@gmail.com"
       user-mail-address     "microamplifier@gmail.com"
       user-full-name        "SH N"

       ;; SMTP settings
       message-send-mail-function   'smtpmail-send-it
       smtpmail-default-smtp-server "smtp.gmail.com"
       smtpmail-smtp-server         "smtp.gmail.com"
       smtpmail-local-domain        "gmail.com"

       ;; Don't keep message buffers around
       message-kill-buffer-on-exit t

       ;; View content using w3m
       mu4e-html2text-command 'render-html-message)))

  ;; Packge settings: markdown-mode
  (use-package markdown-mode
    :defer t
    :config
    (progn
      (global-set-key [remap markdown-next-link] 'vi-style-c-e)
      (global-set-key [remap markdown-previous-link] 'vi-style-c-y)))

  ;; Package settings: neotree
  (use-package neotree
    :defer t
    :init
    (setq-default neo-show-hidden-files nil
                  neo-persist-show t)
    :config
    (progn
      (define-keys neotree-mode-map
        '(("o" neotree-enter)))
      (global-set-key [f8] 'neotree-find)))

  ;; Package settings: org
  (use-package org
    :defer t
    :bind (:map org-mode-map
           ("C-c C-'" . org-todo)
           ("C-c C-/" . org-sparse-tree)))

  ;; Package settings: projectile
  (use-package projectile
    :defer t
    :config
    (setq projectile-switch-project-action
          (lambda ()
            (progn
              (magit-show-refs-head)
              (when (neo-global--window-exists-p)
                (neotree-find)
                (other-window 1))))))

  ;; Package settings: python-mode
  (use-package python
    :defer t
    :init
    (setq fci-rule-column 99)
    :bind (:map python-mode-map
                ("C-c C-j" . helm-semantic-or-imenu))
    :config
    (progn
      (global-set-key [remap anaconda-mode-find-assignments] 'anaconda-mode-go-back)
      (global-set-key [remap anaconda-mode-find-definitions] 'anaconda-mode-find-assignments)))

  ;; Package settings: smartparens
  (use-package smartparens
    :defer t
    :bind (:map sp-keymap
                ("<C-M-backspace>" . sp-splice-sexp)
                ("C-M-]" . sp-select-next-thing)
                ("C-M-a" . sp-backward-down-sexp)
                ("C-M-b" . sp-backward-sexp)
                ("C-M-d" . sp-down-sexp)
                ("C-M-e" . sp-up-sexp)
                ("C-M-f" . sp-forward-sexp)
                ("C-M-n" . sp-next-sexp)
                ("C-M-p" . sp-previous-sexp)
                ("C-M-u" . sp-backward-up-sexp)
                ("C-]" . sp-select-next-thing-exchange)))

  ;; Package settings: magit
  ;;(use-package magit
  ;;  :config (use-package magithub))

  ;; Package settings: yasnippet
  (use-package yasnippet
    :defer t
    :init
    (setq yas-before-expand-snippet-hook nil))

  ;; Package settings: ztree-dir
  (use-package ztree-dir
    :defer t
    :bind (:map ztreedir-mode-map
                ("n" . next-line)
                ("p" . previous-line)
                ("o" . ztree-perform-action)))

  ;; Hooks added: programming modes
  (add-hooks 'prog-mode-hook
             '(eldoc-mode
               ;beacon
               hl-todo-mode
               linum-mode
               rainbow-delimiters-mode
               smartparens-mode))
  ;; Hooks added: conf mode (unix)
  (add-hooks 'conf-unix-mode
             '(smartparens-mode))
  ;; Hooks added: auto-save
  (add-hooks 'auto-save-hook
             '(delete-trailing-whitespace))
  ;; Hooks added: Dart mode
  (add-hooks 'dart-mode-hook
             '(smartparens-mode))
  ;; Hooks added: Python mode
  (add-hooks 'python-mode-hook
             '(fci-mode
               which-function-mode))
  ;; Hooks added: mu4e with gpg
  (add-hooks 'mu4e-compose-mode-hook
             '(epa-mail-mode))
  (add-hooks 'mu4e-view-mode-hook
             '(epa-mail-mode))
  ;; Hooks added: sbt
  (add-hooks 'sbt-mode-hook
             '(smartparens-mode))

  ;; Colorise compilation buffer
  (require 'ansi-color)
  (defun colorise-compilation-buffer ()
    (toggle-read-only)
    (ansi-color-apply-on-region (point-min) (point-max))
    (toggle-read-only))
  (add-hook 'compilation-filter-hook 'colorise-compilation-buffer)
  (add-hook 'compilation-mode-hook 'colorise-compilation-buffer)

  ;; Occupy entire frame
  (advice-add 'gh-md-render-buffer :after (apply-partially 'focus-then-maximise "*gh-md*"))
  (advice-add 'helm-projectile-switch-project :after #'go-set-oracle-scope)
  (advice-add 'magit-log-all :after #'delete-other-windows)
  (advice-add 'magit-log-buffer-file :after #'delete-other-windows)
  (advice-add 'magit-log-head :after #'delete-other-windows)
  (advice-add 'magit-show-refs-head :after #'delete-other-windows)
  (advice-add 'vc-annotate-current-buffer-head :after #'delete-other-windows)

  ;; Recenter after jump to definition
  (advice-add 'dumb-jump-go :after (lambda (&rest args) (recenter-top-bottom)))

  ;; Move point to the beginning of the line before opening a new line
  (advice-add 'open-line :before 'beginning-of-line)

  ;; Make sure vertical windows are split evenly
  (advice-add 'split-window-right :after #'balance-windows)

  ;; Make sure the speedbar buffer's width stays the same
  (advice-add 'sr-speedbar-open :after (lambda ()
                                         (with-current-buffer sr-speedbar-buffer-name
                                           (setq window-size-fixed 'width))))

  ;; DocView for PDF files
  (add-to-list 'auto-mode-alist '("\\.pdf\\'" . doc-view-mode))

  ;; Use org-mode for encrypted org file
  (add-to-list 'auto-mode-alist '("\\.org.gpg\\'" . org-mode))

  ;; Newsticker
  (add-hook 'newsticker-mode-hook 'imenu-add-menubar-index)

  ;; Hydra settings for eyebrowse-mode
  (use-package eyebrowse-mode
    :init (defhydra hydra-eyebrowse ()
            "eyebrowse-mode"
            ("." eyebrowse-switch-to-window-config)
            ("n" eyebrowse-next-window-config)
            ("p" eyebrowse-prev-window-config)))

  ;; Custom key bindings: global
  (define-keys global-map
    '(("C-M-<tab>" company-yasnippet)
      ("C-c C-," dumb-jump-back)
      ("C-c C-." dumb-jump-go)
      ("C-c C-j" helm-semantic-or-imenu)
      ("C-x '" switch-to-previous-buffer)
      ("C-x ," eyebrowse-rename-window-config)
      ("C-x -" split-window-below-and-focus)
      ("C-x C-b" ibuffer-list-buffers)
      ("C-x M-'" switch-to-pprevious-buffer)
      ("C-x M-d" ztree-dir)
      ("C-x M-n" make-frame)
      ("C-x O" previous-multiframe-window)
      ("C-x \"" switch-to-pprevious-buffer)
      ("C-x \\" split-window-right-and-focus)
      ("C-x k" kill-this-buffer)
      ("C-x l" delete-other-windows)
      ("C-x p" delete-window)
      ("C-x q" delete-window)
      ("C-x |" split-and-search-in-proj)
      ("M-SPC" spacemacs/shell-pop-eshell)
      ("M-[" beginning-of-defun)
      ("M-]" end-of-defun)
      ("M-n" vi-style-c-e)
      ("M-p" vi-style-c-y)
      ("RET" newline-and-indent)))
  ;; Custom key bindings: SPC shortcuts
  (spacemacs/set-leader-keys
    "M-e" 'hydra-eyebrowse/body
    "M-f" 'helm-mini
    "M-m" 'avy-goto-word-or-subword-1
    "M-v" 'er/expand-region
    "ab" 'sr-speedbar-toggle
    "aC" 'calendar
    "aD" 'dictionary
    "aSu" 'smmry-by-url
    "aSr" 'smmry-by-region
    "ameh" 'helm-emms
    "amep" 'emms-start
    "ames" 'emms-stop
    "an" 'deft
    "at" 'twit
    "ay" 'zone-nyan-preview
    "az" 'fzf
    "gL" 'magit-log-buffer-file
    "gM" 'magit-show-refs-head
    "ga" 'vc-annotate-current-buffer-head
    "gw" 'browse-at-remote
    "ha" 'helm-aws
    "hb" 'helm-filtered-bookmarks
    "hl" 'helm-resume
    "ho" 'helm-occur
    "pP" 'projectile-test-project
    "psp" 'spacemacs/helm-project-do-ag-region-or-symbol
    "pss" 'helm-projectile-ag
    "psr" 'helm-projectile-rg-at-point
    "psR" 'helm-projectile-rg
    "pu" 'projectile-run-project
    "sq" 'howdoi-query
    ",cm" 'mc/mark-all-like-this))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector
   [unspecified "#131513" "#e6193c" "#29a329" "#98981b" "#3d62f5" "#ad2bee" "#3d62f5" "#8ca68c"] t)
 '(beacon-blink-delay 0.15)
 '(beacon-blink-duration 0.15)
 '(beacon-blink-when-focused t)
 '(beacon-dont-blink-major-modes
   (quote
    (t magit-status-mode magit-popup-mode magit-log-mode magit-refs-mode magit-process-mode magit-diff-mode inf-ruby-mode gnus-summary-mode gnus-group-mode eshell-mode sbt-mode ensime-mode compilation-mode neotree-mode dired-mode fundamental-mode comint-mode spacemacs-buffer-mode Custom-mode help-mode twittering-mode elfeed-search-mode elfeed-show-mode eww-mode deft-mode org-mode calendar-mode paradox-menu-mode ibuffer-mode mu4e-view-mode mu4e-headers-mode dictionary-mode restclient-mode vc-annotate-mode ztree-mode text-mode speedbar-mode)))
 '(beacon-size 15)
 '(blink-cursor-mode t)
 '(bookmark-save-flag 1)
 '(cursor-type (quote box))
 '(emms-cache-file "~/.spacemacs.d/emms/cache")
 '(emms-mode-line-cycle-max-width 13)
 '(emms-mode-line-cycle-use-icon-p t)
 '(emms-stream-bookmarks-file "~/.spacemacs.d/emms/streams")
 '(evil-want-Y-yank-to-eol t)
 '(expand-region-smart-cursor nil)
 '(fill-column 100)
 '(flycheck-disabled-checkers nil)
 '(flycheck-gometalinter-disable-linters
   (quote
    ("gotype" "aligncheck" "ineffassign" "structcheck" "unconvert" "staticcheck" "gocyclo" "goconst" "varcheck" "errcheck" "golint")))
 '(flycheck-javascript-standard-executable "standard")
 '(fzf/window-height 30)
 '(global-spacemacs-leader-override-mode t)
 '(helm-ag-show-status-function (quote spaceline--helm-ag-update) t)
 '(helm-always-two-windows t)
 '(helm-bookmark-show-location t)
 '(helm-descbinds-mode t)
 '(helm-descbinds-window-style (quote split))
 '(helm-display-function (quote spacemacs//display-helm-window))
 '(helm-display-header-line nil)
 '(helm-echo-input-in-header-line t)
 '(helm-flx-for-helm-find-files nil)
 '(helm-flx-mode t)
 '(helm-fuzzy-matching-highlight-fn (quote helm-flx-fuzzy-highlight-match))
 '(helm-fuzzy-sort-fn (quote helm-flx-fuzzy-matching-sort))
 '(helm-imenu-execute-action-at-once-if-one nil t)
 '(helm-locate-command "mdfind -name %s %s")
 '(helm-mode t)
 '(helm-rg-smart-case t)
 '(helm-split-window-in-side-p t)
 '(ivy-height 25)
 '(magit-log-arguments (quote ("-n256" "--graph" "--decorate" "--color")))
 '(mu4e-view-show-images t)
 '(neo-theme (quote ascii))
 '(neo-window-width 32 t)
 '(package-selected-packages
   (quote
    (spotify helm-spotify multi skewer-mode powerline anaconda-mode pcre2el request spacemacs-theme-dark-theme spaemacs-theme-dark-theme hydra js2-mode spinner railscasts-reloaded-theme websocket company go-mode sbt-mode yasnippet with-editor memoize ivy emms git-commit speed-type restclient-helm ob-restclient company-restclient punpun-light-theme org highlight flycheck projectile helm-core window-purpose imenu-list zenburn-theme all-the-icons dash pcache git-gutter helm magit async ztree zone-nyan yapfify yaml-mode ws-butler window-numbering which-key web-mode web-beautify w3m volatile-highlights vmd-mode uuidgen use-package twittering-mode toc-org tao-theme tagedit stickyfunc-enhance srefactor sr-speedbar sql-indent spacemacs-theme spaceline smmry smeargle smartparens slim-mode shell-pop seoul256-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder restclient restart-emacs rcirc-notify rcirc-color rbenv rake rainbow-mode rainbow-identifiers rainbow-delimiters quelpa pyvenv pytest pyenv-mode py-isort puppet-mode punpun-theme pug-mode pip-requirements persp-mode pbcopy password-generator paradox osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file ob-http ob-elixir neotree mwim multi-term mu4e-maildirs-extension mu4e-alert move-text mmm-mode minitest markdown-toc magithub magit-gitflow macrostep lua-mode lorem-ipsum livid-mode live-py-mode linum-relative link-hint less-css-mode launchctl labburn-theme know-your-http-well julia-shell json-mode js2-refactor js-doc jdee jabber insert-shebang info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize howdoi hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-purpose helm-pt helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-emms helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio godoctor go-playground go-guru go-errcheck go-eldoc go-direx gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fzf focus flycheck-pos-tip flycheck-mix flycheck-gometalinter flx-ido floobits fish-mode find-file-in-project fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil eval-sexp-fu eshell-z eshell-prompt-extras esh-help ensime engine-mode emms-mode-line-cycle emmet-mode elisp-slime-nav elfeed-web elfeed-org elfeed-goodies ein dumb-jump doom-themes disaster diff-hl dictionary deft dash-at-point dart-mode cython-mode csv-mode company-web company-tern company-statistics company-shell company-go company-c-headers company-anaconda column-enforce-mode color-identifiers-mode coffee-mode cmake-mode clean-aindent-mode clang-format chruby bundler browse-at-remote bm bind-map beacon base16-theme auto-yasnippet auto-highlight-symbol auto-compile anzu alchemist aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(paradox-github-token t)
 '(python-shell-interpreter "ipython" t)
 '(python-shell-virtualenv-path "~/pyvenv")
 '(python-shell-virtualenv-root "~/pyvenv")
 '(rainbow-identifiers-choose-face-function (quote rainbow-identifiers-cie-l*a*b*-choose-face) t)
 '(rainbow-identifiers-cie-l*a*b*-color-count 1024 t)
 '(rainbow-identifiers-cie-l*a*b*-lightness 80 t)
 '(rainbow-identifiers-cie-l*a*b*-saturation 25 t)
 '(spaceline-helm-mode t)
 '(speedbar-show-unknown-files t)
 '(speedbar-use-images nil)
 '(sr-speedbar-default-width 35)
 '(sr-speedbar-max-width 35)
 '(sr-speedbar-right-side nil)
 '(vc-annotate-very-old-color nil)
 '(which-key-idle-delay 1.0))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(fancy-battery-charging ((t (:inherit font-lock-keyword-face))))
 '(fancy-battery-critical ((t (:inherit font-lock-builtin-face))))
 '(fancy-battery-discharging ((t (:inherit font-lock-variable-name-face))))
 '(hi-black-b ((t (:box (:line-width 2 :color "grey75" :style released-button) :weight extra-bold))))
 '(hi-black-hb ((t (:foreground "SlateGray4"))))
 '(hi-green-b ((t (:foreground "dark green" :weight bold))))
 '(linum ((t (:height 1.0))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 1.0))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 1.0))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :underline t :height 1.0))))
 '(markdown-pre-face ((t (:height 1.0))))
 '(org-level-1 ((t (:height 1.0))))
 '(org-level-2 ((t (:height 1.0))))
 '(org-level-3 ((t (:height 1.0))))
 '(speedbar-button-face ((t (:inherit font-lock-string-face))))
 '(speedbar-directory-face ((t (:inherit font-lock-function-face))))
 '(speedbar-file-face ((t (:inherit font-lock-keyword-face))))
 '(speedbar-selected-face ((t (:inherit font-lock-type-face))))
 '(which-func ((t (:inherit font-lock-string-face)))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (vi-tilde-fringe evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu define-word ztree zone-nyan zenburn-theme yapfify yaml-mode ws-butler winum which-key web-mode web-beautify w3m volatile-highlights vmd-mode uuidgen use-package unfill twittering-mode toc-org tao-theme tagedit stickyfunc-enhance srefactor sr-speedbar sql-indent spacemacs-theme spaceline smmry smeargle smartparens slim-mode shell-pop seoul256-theme scss-mode sass-mode rvm ruby-tools ruby-test-mode rubocop rspec-mode robe reveal-in-osx-finder restclient-helm restart-emacs rcirc-notify rcirc-color rbenv rake rainbow-mode rainbow-identifiers rainbow-delimiters quelpa pyvenv pytest pyenv-mode py-isort puppet-mode punpun-theme pug-mode pip-requirements persp-mode pbcopy password-generator paradox osx-trash osx-dictionary orgit org-projectile org-present org-pomodoro org-plus-contrib org-download org-bullets open-junk-file ob-restclient ob-http ob-elixir neotree mwim multi-term mu4e-maildirs-extension mu4e-alert move-text mmm-mode minitest markdown-toc magithub magit-gitflow macrostep lua-mode lorem-ipsum livid-mode live-py-mode linum-relative link-hint less-css-mode launchctl labburn-theme julia-shell json-mode js2-refactor js-doc jdee jabber insert-shebang info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize howdoi hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-purpose helm-pt helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-emms helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag google-translate golden-ratio godoctor go-playground go-guru go-errcheck go-eldoc go-direx gnuplot gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gh-md fzf focus flycheck-pos-tip flycheck-mix flycheck-gometalinter flx-ido floobits fish-mode find-file-in-project fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil eval-sexp-fu eshell-z eshell-prompt-extras esh-help ensime engine-mode emms-mode-line-cycle emmet-mode elisp-slime-nav elfeed-web elfeed-org elfeed-goodies ein dumb-jump doom-themes disaster diff-hl dictionary deft dash-at-point dart-mode cython-mode csv-mode creamsody-theme company-web company-tern company-statistics company-shell company-restclient company-go company-c-headers company-anaconda column-enforce-mode color-identifiers-mode coffee-mode cmake-mode clean-aindent-mode clang-format chruby bundler browse-at-remote bm bind-map beacon base16-theme auto-yasnippet auto-highlight-symbol auto-compile anzu alchemist aggressive-indent adoc-mode adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
)
