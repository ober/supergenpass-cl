(in-package "CL-USER")

(load "~/quicklisp/setup.lisp")

(load "supergenpass.lisp")

#+lispworks
(progn
  (load-all-patches)
  (deliver 'main "supergenpass" 1 :multiprocessing T :keep-eval T :interface :capi ))

#+sbcl
(sb-ext:save-lisp-and-die "supergenpass"  :executable t :toplevel 'main :save-runtime-options t)
;;(sb-ext:save-lisp-and-die "supergenpass" :compression 9 :executable t :toplevel 'main :save-runtime-options t)

#+(or ccl clisp)
(progn
  (ql:quickload "trivial-dump-core")
  (trivial-dump-core:save-executable "supergenpass" #'main))

#+allegro
(progn
(compile-file "supergenpass.lisp")
(generate-executable "supergenpass" '("supergenpass.fasl")))
