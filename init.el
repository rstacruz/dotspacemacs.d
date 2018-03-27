;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
 (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
      ;; ----------------------------------------------------------------
      ;; Example of useful layers you may want to use right away.
      ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
      ;; `M-m f e R' (Emacs style) to install them.
      ;; ----------------------------------------------------------------
      (auto-completion :variables
        ;; Make auto-completions show up not-so-immediately
        auto-completion-complete-with-key-sequence-delay 0.9
        auto-completion-idle-delay 0.5
        ;; Don't complete with return key.
        ;; (Use C-j and C-k to cycle, C-l to complete)
        auto-completion-return-key-behavior nil
        auto-completion-tab-key-behavior 'complete
        ;; Automatically invoke tooltips
        auto-completion-enable-help-tooltip t
        ;; Complete yasnippets with company
        auto-completion-enable-snippets-in-popup t)
      (ranger :variables
        ;; Show more panes
        ranger-parent-depth 2
        ranger-ignored-extensions '("temp" "DS_Store" "pyc" "o" "png" "jpg" "jpeg")
        ;; Syntax highlighting in preview (`zi` to toggle)
        ranger-show-literal nil)
      (deft :variables
        deft-directory "~/Notes/2017"
        deft-default-extension "md"
        deft-recursive t
        deft-extensions '("md" "org"))
      (markdown :variables
        ;; Use vmd (`npm install -g vmd')
        markdown-live-preview-engine 'vmd
        ;; MMM modes
        markdown-mmm-auto-modes '(("js" "js2") ("jsx" "react") ("bash" "shell")
                                   ("html" "web") ("scss" "css") ("rb" "ruby")
                                   "elixir" "ruby" "css")
        ;; Don't style the code blocks with courier new or whatever
        markdown-fontify-code-blocks-natively t)
      (shell :variables
        shell-default-shell 'eshell)
      (org :variables
        ;; Enable github flavored markdown
        org-enable-github-support t
        ;; Add extra todo keywords
        org-todo-keywords '((type "TODO" "NOW" "DONE")))
      git
      version-control
      html
      shell-scripts
      yaml
      ruby
      ruby-on-rails
      react
      osx
      elixir
      javascript
      themes-megapack
      helm
      emacs-lisp
      neotree
      syntax-checking
      )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;; To use a local version of a package, use the `:location' property:
   ;; '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
    dotspacemacs-additional-packages '(
                                        prettier-js
                                        dtrt-indent
                                        xterm-frobs
                                        github-theme
                                        basic-theme
                                        evil-terminal-cursor-changer
                                        )

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
    dotspacemacs-excluded-packages '(
                                      ;; Slows down the terminal. Turning this off,
                                      ;; though, removes clipboard support.
                                      pbcopy
                                      ;; I hate tern
                                      tern
                                      company-tern
                                      ;; I hate smartparens
                                      smartparens
                                      )

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; lastest version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory nil

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim

   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((projects . 7)
                                (recents . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(madhat2r subatomic256 jbeans omtose-darker dakrone)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `vim-powerline' and `vanilla'. The first three
   ;; are spaceline themes. `vanilla' is default Emacs mode-line. `custom' is a
   ;; user defined themes, refer to the DOCUMENTATION.org for more info on how
   ;; to create your own spaceline theme. Value can be a symbol or list with\
   ;; additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
    dotspacemacs-mode-line-theme '(spacemacs
                                    :separator wave
                                    :separator-scale 1.4)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Arial"
                                :size 16
                                :weight normal
                                :width normal)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key ","

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key ","

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
  dotspacemacs-major-mode-leader-key "SPC"

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t

   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t

   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil

   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global t

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil

   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil

   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom

   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always

   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native t

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 95

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 95

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil

   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%t"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'all

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  ;; Remove "unix" in modeline
  (setq-default spaceline-buffer-encoding-p nil)

  ;; Remove "edit" in modeline
  (setq-default spaceline-purpose-off-p nil)

  ;; Magit fullscreen
  (setq-default git-magit-status-fullscreen t)

  (setq-default
    ;; Dvorak mode for avy
    avy-keys '(?a ?o ?e ?u ?i ?d ?h ?t ?n ?s ?p ?y ?f ?g ?c ?r)
    ;; don't shift text around
    avy-style 'at-full)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;; Don't make helm so huge
  (setq helm-display-buffer-height 8)
  (setq helm-autoresize-max-height 8)

  ;; Enable evil-terminal-cursor-changer
  (evil-terminal-cursor-changer-activate)

  ;; Remove `unix' from modeline
  (spaceline-toggle-buffer-encoding-abbrev-off)

  ;; Make fish play better with ansi-term
  (add-hook 'term-mode-hook 'spacemacs/toggle-truncate-lines-on)

  ;; Make flycheck check less frequently, to save CPU
  (setq flycheck-check-syntax-automatically '(save mode-enabled))

  ;; Natural title bar: prettier title bar in the GUI.
  ;; Requires a recent version of emacs-plus on OSX.
  (setq default-frame-alist '((ns-transparent-titlebar . t) (ns-appearance . 'nil)))

  ;; Clean up mode line
  (spacemacs/toggle-mode-line-minor-modes-off)
  (spacemacs/toggle-mode-line-version-control-off)

  ;; Enable indent line (`SPC t i')
  ;; (spacemacs/toggle-indent-guide-globally-on)

  ;; Disable line highlight (`SPC t h h')
  ;; (spacemacs/toggle-highlight-current-line-globally-off)

  ;; Revert vim-surround's `s' and `S' to act like Vim defaults
  (evil-define-key 'visual evil-surround-mode-map "s" 'evil-substitute)
  (evil-define-key 'visual evil-surround-mode-map "S" 'evil-surround-region)

  ;; Keys: Ctrl+P for finding files in a project
  ;; (global-set-key (kbd "C-p" 'helm-projectile))
  (define-key evil-normal-state-map (kbd "C-p") 'helm-projectile)

  ;; Make C-j and C-k do nothing.
  (dolist (key '("\C-j" "\C-k"))
    (global-unset-key key))

  (dotspacemacs/reset-font)

  ;; Use 2 spaces for indentation by default
  (setq-default
    tab-width 2
    js2-basic-offset 2
    js-indent-level 2
    web-mode-markup-indent-offset 2
    web-mode-css-indent-offset 2
    web-mode-code-indent-offset 2
    web-mode-attr-indent-offset 2
    css-indent-offset 2
    js2-bounce-indent-p t
    js2-bounce-indent t
    js2-strict-missing-semi-warning nil
    json-reformat:indent 2)

  ;; https://github.com/prettier/prettier-emacs
  (require 'prettier-js)
  (setq prettier-js-command "prettier-eslint")
  ;; (add-hook 'js2-mode-hook 'prettier-js-mode)
  ;; (add-hook 'web-mode-hook 'prettier-js-mode)

  ;; SPC P - projectile
  (spacemacs/set-leader-keys "P" 'helm-projectile)

  ;; SPC o n - orgnotes
  (spacemacs/set-leader-keys "on" 'dotspacemacs/user-edit-notes)

  ;; SPC o n - deft (like `SPC a n' but faster)
  (spacemacs/set-leader-keys "od" 'deft-find-file)

  ;; SPC o t - open terminal here (like `SPC a s t' but faster)
  (spacemacs/set-leader-keys "ot" 'multi-term)

  ;; SPC " - open multiterm (just like SPC ')
  (spacemacs/set-leader-keys "\"" 'spacemacs/shell-pop-multiterm)

  ;; SPC o r - rename buffer (useful for naming terminals)
  (spacemacs/set-leader-keys "or" 'rename-buffer)

  ;; Ranger: use `-' to enter Ranger mode. Unlike the Ranger default,
  ;; this one will enter "ranger" mode and not "deer" mode
  (define-key evil-normal-state-map (kbd "-") 'ranger)

  ;; 0.1 second company delay in popups
  (setq company-idle-delay 0.1)

  ;; Global basic auto complete
  (global-company-mode)

  ;; Guess indentation
  (dtrt-indent-mode)

  ;; Disable lockfiles
  (setq create-lockfiles nil)

  ;; Sets Rico's preferred color overrides.
  ;; Only for the terminal
  (if (display-graphic-p) nil
    (custom-set-faces
      '(default ((t (:inherit nil :stipple nil :background "nil" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 1 :width normal :foundry "default" :family "default"))))))
  )

(defun spaceline-custom-theme (&rest additional-segments)
    "My custom spaceline theme.
See: https://github.com/syl20bnr/spacemacs/blob/develop/doc/DOCUMENTATION.org#custom-spaceline-theme"
    (spaceline-compile
      `(buffer-id (major-mode :when active) (minor-modes :when active))
      `((line-column :separator " | " :priority 3 :when active)
        ,@additional-segments))
    (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))

(defun rsc/mode-line-enable ()
  "Undoes an rsc/mode-line-disable, but only for future windows"
  (interactive)
  (setq-default mode-line-format '("%e" (:eval (spaceline-ml-main)))))

(defun rsc/mode-line-enable-here ()
  "Undoes an rsc/mode-line-disable, but only for the current window"
  (interactive)
  (setq mode-line-format '("%e" (:eval (spaceline-ml-main)))))

(defun rsc/mode-line-disable ()
  "Disables mode line completely"
  (interactive)
  (setq-default mode-line-format nil))

(defun dotspacemacs/reset-font ()
  "Resets the fonts."
  (interactive)

  ;; Because spacemacs's font variable isn't working
  (set-face-attribute 'default nil
    :height 150
    :family "Iosevka")

  (set-face-attribute 'fixed-pitch nil
    :height 150
    :family "Iosevka"))

(defun dotspacemacs/user-edit-notes ()
  "Opens the notes file."
  (interactive)
  (find-file-existing "~/org/notes.org"))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
  '(evil-want-Y-yank-to-eol t)
  '(package-selected-packages
     '(yaml-mode projectile diminish bind-key packed evil goto-chg undo-tree epl helm helm-core avy hydra s prettier-js rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data unfill mwim helm-company helm-c-yasnippet fuzzy company-tern dash-functional company-statistics auto-yasnippet ac-ispell auto-complete reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl powerline spinner parent-mode smartparens iedit anzu highlight f zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme ob-elixir flycheck-mix flycheck-credo alchemist company elixir-mode smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link flycheck-pos-tip pos-tip flycheck evil-magit magit magit-popup git-commit ghub async let-alist with-editor dash web-beautify tern livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc coffee-mode mmm-mode markdown-toc markdown-mode gh-md ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line)))
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
  '(ansi-color-names-vector
     ["#6f7c80" "#d93334" "#40805b" "#b1951d" "#4f97d7" "#c24160" "#22aae1" "#c1c7c9"])
  '(custom-safe-themes
     (quote
       ("0b7ee9bac81558c11000b65100f29b09488ff9182c083fb303c7f13fd0ec8d2b" default)))
 '(evil-want-Y-yank-to-eol t)
  '(package-selected-packages
     (quote
       (yasnippet-snippets company-shell company-quickhelp yaml-mode projectile diminish bind-key packed evil goto-chg undo-tree epl helm helm-core avy hydra s prettier-js rvm ruby-tools ruby-test-mode rubocop rspec-mode robe rbenv rake minitest chruby bundler inf-ruby xterm-color shell-pop multi-term eshell-z eshell-prompt-extras esh-help web-mode tagedit slim-mode scss-mode sass-mode pug-mode less-css-mode helm-css-scss haml-mode emmet-mode company-web web-completion-data unfill mwim helm-company helm-c-yasnippet fuzzy company-tern dash-functional company-statistics auto-yasnippet ac-ispell auto-complete reveal-in-osx-finder pbcopy osx-trash osx-dictionary launchctl git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter diff-hl powerline spinner parent-mode smartparens iedit anzu highlight f zenburn-theme zen-and-art-theme white-sand-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme spacegray-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme rebecca-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme madhat2r-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme farmhouse-theme exotica-theme espresso-theme dracula-theme django-theme darktooth-theme autothemer darkokai-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme ob-elixir flycheck-mix flycheck-credo alchemist company elixir-mode smeargle orgit magit-gitflow helm-gitignore gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link flycheck-pos-tip pos-tip flycheck evil-magit magit magit-popup git-commit ghub async let-alist with-editor dash web-beautify tern livid-mode skewer-mode simple-httpd json-mode json-snatcher json-reformat js2-refactor yasnippet multiple-cursors js2-mode js-doc coffee-mode mmm-mode markdown-toc markdown-mode gh-md ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-themes helm-swoop helm-projectile helm-mode-manager helm-make helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump define-word column-enforce-mode clean-aindent-mode auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line))))
)
