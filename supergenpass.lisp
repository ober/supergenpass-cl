(ql:quickload '(:cl-base64 :md5 :cl-ppcre))


(defun b64-md5 (pickle)
  "Encrypt the string given to us as Base64 encoded Md5 byte stream"
  (substitute #\9 #\+
	      (substitute #\A #\=
			  (substitute #\8 #\/
				      (base64:usb8-array-to-base64-string
				       (md5:md5sum-string pickle))))))


(defun sgp-generate (password domain length)
  "Create a unique password for a given domain and master password"
  (let ((i 0)
	(initial (format nil "~A:~A" password domain)))
    (defparameter results (b64-md5 initial))
    (loop
       ;;(format t "inloop: i:~A results:~A~%" i results)
       (if (and
	    (> i 8)
	    (secure-enough results length))
	   (return (subseq results 0 length)))
       (setf results (b64-md5 results))
       (setf i (1+ i)))))

(defun secure-enough (results len)
  "Ensure the password we have is sufficiently secure"
  (and
   (> (length results) len)
   (ppcre:all-matches "[0-9]" (subseq results 0 len))
   (ppcre:all-matches "[A-Z]" (subseq results 0 len))
   (ppcre:all-matches "^[a-z]" (subseq results 0 len))))
