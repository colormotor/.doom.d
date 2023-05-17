;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here, run 'doom sync' on
;; the command line, then restart Emacs for the changes to take effect.
;; Alternatively, use M-x doom/reload.
;;
;; WARNING: Disabling core packages listed in ~/.emacs.d/core/packages.el may
;; have nasty side-effects and is not recommended.


;; All of Doom's packages are pinned to a specific commit, and updated from
;; release to release. To un-pin all packages and live on the edge, do:
;(unpin! t)

;; ...but to unpin a single package:
;(unpin! pinned-package)
;; Use it to unpin multiple packages
;(unpin! pinned-package another-pinned-package)


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)
(unpin! zmq)
(package! zmq
   :recipe (:host github :repo "nnicandro/emacs-zmq"))
(unpin! polymode)
(unpin! jupyter)
(package! jupyter
   :recipe (:host github :repo "nnicandro/emacs-jupyter")) ; :branch "next"))

(unpin! org-gcal)
(package! org-gcal
  :recipe (:host github :repo "kidd/org-gcal.el"))

(unpin! org-roam)
(package! org-roam-ui)

(package! org-caldav)
(package! elpy)
(package! yasnippet)
(package! windresize) ;; Resize windows with arrows
(package! dimmer)
(package! org-ref)
(package! org-fragtog)
(package! lsp-ui)
;(package! dap-mode)
(package! clang-format)
(package! google-c-style)
;(package! realgud-lldb)
(unpin! dap-mode)

(package! dap-mode)
(package! image+)
(package! ox-ipynb
  :recipe (:host github :repo "jkitchin/ox-ipynb"))
(package! citeproc)
(package! tide)

; For doc strings (requires pip install pyment)
(package! buftra
    :recipe (:host github :repo "humitos/buftra.el"))
(package! py-pyment
    :recipe (:host github :repo "humitos/py-cmd-buffer.el"))

; Try to put minibuffer input at top, so it does not interfere with info-bar
; https://github.com/muffinmad/emacs-mini-frame
(package! mini-frame)
(package! string-inflection)
(package! org-appear)
(package! org-journal)

;; (package! evil-briefcase
;;   :recipe (:host github :repo "strickinato/evil-briefcase"))
(package! nyan-mode) ;; Keeping track of buffer pos

(package! lsp-python-ms)

(package! parrot) ;; Toggling between symbols (e.g. true/false)
(package! js-format)
  ;(pdf-tools-install)) ;; This baby gives big issues with poppler

(package! citar-org-roam)

(package! org-super-agenda)
(package! quarto-mode)

(package! conda)

(package! copilot
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))

;; (package! gud-lldb
;;   :recipe (:host github :repo "extbit/gud"))


;; To install a package directly from a particular repo, you'll need to specify
;; a `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, for whatever reason,
;; you can do so here with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))
