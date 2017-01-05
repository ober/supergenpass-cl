(in-package "CL-USER")

(load "~/quicklisp/setup.lisp")

(load "supergenpass.lisp")

#+lispworks
(progn
  (load-all-patches)
  (deliver 'main "supergenpass-lw" 0 :interface :capi :keep-package-manipulation t :multiprocessing t :keep-eval t :keep-fasl-dump t :keep-editor t :keep-foreign-symbols t :keep-function-name t :keep-gc-cursor t :keep-keyword-names t :keep-lisp-reader t :keep-macros t :keep-modules t :keep-top-level t :license-info nil  :keep-walker t :KEEP-PRETTY-PRINTER t :startup-bitmap-file nil))

#+sbcl
(sb-ext:save-lisp-and-die "supergenpass"  :compression 5 :executable t :toplevel 'main :save-runtime-options t :compact t)
;;(sb-ext:save-lisp-and-die "supergenpass" :compression 9 :executable t :toplevel 'main :save-runtime-options t)

#+(or ccl clisp)
(progn
  (ql:quickload "trivial-dump-core")
  (trivial-dump-core:save-executable "supergenpass" #'main))

#+allegro
(progn
  (compile-file "supergenpass.lisp")
  (generate-executable "supergenpass" '("supergenpass.fasl")))
