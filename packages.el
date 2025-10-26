;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here and run 'doom sync'
;; on the command line, then restart Emacs for the changes to take effect -- or
;; use 'M-x doom/reload'.


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a remote git repo, you must specify a
;; `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/radian-software/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, you can do so here
;; with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see radian-software/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))

;; Use `:pin' to specify a particular commit to install.
;(package! builtin-package :pin "1a2b3c4d5e")


;; Doom's packages are pinned to a specific commit and updated from release to
;; release. The `unpin!' macro allows you to unpin single packages...
;(unpin! pinned-package)
;; ...or multiple packages
;(unpin! pinned-package another-pinned-package)
;; ...Or *all* packages (NOT RECOMMENDED; will likely break things)
;(unpin! t)

(package! evil-tutor)

(package! parrot) ;; Toggling between symbols (e.g. true/false)
(package! dimmer)

(unpin! zmq)
(package! zmq
   :recipe (:host github :repo "nnicandro/emacs-zmq"))


;; (use-package jupyter
;;   :demand t
;;   :after (:all org python))
; (unpin! jupyter)
;; (package! jupyter
;;    :recipe (:host github :repo "nnicandro/emacs-jupyter")) ; :branch "next"))
(unpin! jupyter)
(package! jupyter
    :recipe (:host github :repo "tmurph/jupyter" :branch "devel")) ; :branch "next"))

(package! chatgpt-shell)
(package! gptel)

;; (package! polymode)
;; (package! poly-org)

;; (unpin! org-gcal)
;; (package! org-gcal
;;   :recipe (:host github :repo "kidd/org-gcal.el"))

;; (unpin! org-roam)
(package! org-roam-ui)
;; Need for kernels?
(package! ox-ipynb
  :recipe (:host github :repo "jkitchin/ox-ipynb"))
(package! yasnippet)

;(package! org-ref)
(package! org-fragtog)

(package! org-caldav)
(package! elpy)

(package! mini-frame)
;; (package! string-inflection) ; Broken?
(package! org-appear)
(package! org-journal)

(package! org-modern)

;; Enable multiple major modes in a single buffer
(package! mmm-mode)

;; (package! windresize) ;; Resize windows with arrows
;; (package! dimmer)

(unpin! dap-mode)
(package! magit-section)
(package! lsp-ui)
(package! dap-mode)
(package! clang-format)
(package! google-c-style)

(package! citar-org-roam)
(package! org-super-agenda)
(package! conda)

(package! image+)
(package! org-make-toc)

(package! polymode)
;;
;; ;(package! realgud-lldb)

;; ;; (package! evil-briefcase
;; ;;   :recipe (:host github :repo "strickinato/evil-briefcase"))
;; (package! nyan-mode) ;; Keeping track of buffer pos


;;
;; (package! dap-mode)


;; (package! citeproc)
;; (package! tide)

;; ; For doc strings (requires pip install pyment)
;; (package! buftra
;;     :recipe (:host github :repo "humitos/buftra.el"))
;; (package! py-pyment
;;     :recipe (:host github :repo "humitos/py-cmd-buffer.el"))

;; ; Try to put minibuffer input at top, so it does not interfere with info-bar
;; ; https://github.com/muffinmad/emacs-mini-frame


;; (package! lsp-python-ms)
;; 
;; (package! js-format)
;;   ;(pdf-tools-install)) ;; This baby gives big issues with poppler

;; ; (package! quarto-mode)


(package! copilot
  :recipe (:host github :repo "copilot-emacs/copilot.el" :files ("*.el")))

;(package! copilot
;  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))
