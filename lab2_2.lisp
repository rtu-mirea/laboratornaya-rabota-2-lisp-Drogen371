(defconstant sample "‪C:\Users\Drogen\Desktop\sample.txt")

(defun myread (filepath)
(let ((in (open filepath :if-does-not-exist nil)))
  (when in
    (loop for line = (read-line in nil)
         while line do (format t "~a~%" line))
    (close in))))

(myread sample)
