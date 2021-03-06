(ql:quickload '(:cl-base64 :md5 :cl-ppcre))

#+(or sbcl ccl)
(ql:quickload :ltk)

#+lispworks
(defun prompt-for-input (query)
  (capi:prompt-for-string (format nil "~A" query) :overwrite-character #\*))

#+lispworks
(defun copy-to-clipboard (text)
  (capi:set-clipboard (capi:convert-to-screen nil) text))


#+(or sbcl ccl)
(defun prompt-for-input (query)
  (ltk:with-ltk ()
    (let* ((text-widget
	    (make-instance 'text :width 15 :height 2 :name "password"))
	   (b1 (make-instance 'button
			      :text (format nil "~A" query)
			      :command #'(lambda ()
					   (defvar *mykey* (text text-widget))
					   (setf *exit-mainloop* t)))))
      (pack text-widget)
      (pack b1))))

(defun b64-md5 (pickle)
  "Encrypt the string given to us as Base64 encoded Md5 byte stream"
  (substitute #\9 #\+
	      (substitute #\A #\=
			  (substitute #\8 #\/
				      (base64:usb8-array-to-base64-string
				       (md5:md5sum-string pickle))))))

(defun secure-enough (results len)
  "Ensure the password we have is sufficiently secure"
  (and
   (> (length results) len)
   (ppcre:all-matches "[0-9]" (subseq results 0 len))
   (ppcre:all-matches "[A-Z]" (subseq results 0 len))
   (ppcre:all-matches "^[a-z]" (subseq results 0 len))))

(defun sgp-generate (password domain length)
  "Create a unique password for a given domain and master password"
  (let* ((i 0)
	 (initial (format nil "~A:~A" password domain))
	 (results (b64-md5 initial)))
    (loop
       (if (and
	    (> i 8)
	    (secure-enough results length))
	   (return (subseq results 0 length)))
       (setf results (b64-md5 results))
       (setf i (1+ i)))))

(defun main (&optional args)
  "Primary entry point"
  (let ((master (prompt-for-input "Master:"))
	(domain (prompt-for-input "Domain:")))
    (copy-to-clipboard (sgp-generate master domain 10))))
