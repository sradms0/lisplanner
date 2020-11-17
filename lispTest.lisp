;; (defun adder (x y z)
;;     (+ x y z)
;; )

;; (print (adder 8 6 7))

;; (defclass person()
;;   ((name
;;      :initarg :name
;;      :accessor name)
;;    (lisper
;;      :initform nil
;;      :accessor lisper)))

;; (defvar p1 (make-instance 'person :name "me"))
;; (print (name p1))

;; (defclass child (person)
;;   ((can-walk-p 
;;      :accessor can-walk-p
;;      :initform t)))

;; (print (can-walk-p (make-instance 'child)))

;; (defclass Event()
;;   ((year
;;      :initarg :year
;;      :accessor year)
;;    (month
;;      :initform :month
;;      :accessor month)
;;     (day
;;      :initarg :day
;;      :accessor day)
;;     (hour
;;      :initarg :hour
;;      :accessor hour)
;;     (name
;;      :initarg :name
;;      :accessor name)
;;     (notes
;;      :initarg :name
;;      :accessor notes)))



     (defclass Event ()
   (  (Year :accessor Event-Year)
      (Month :accessor Event-Month)
      (Day :accessor Event-Day)
      (hour :accessor Event-hour)
      (Name :accessor Event-Name)
      (Notes :accessor Event-Notes)
   )
    )
    (defmethod timeUntil((object Event) currHour)
        (if(< (- (Event-Hour object) currHour) 0)
            (+ 24 (- (Event-Hour object) currHour))
            (- (Event-Hour object) currHour)))

    (defmethod getYear ((object Event))
        (format t "Year ~d~%" (Event-Year object))
    )

    (defmethod getYear ((object Event))
        (format t "Year ~d~%" (Event-Year object))
    )

     (defmethod getHour ((object Event))
        (format t "Hour ~d~%" (Event-Hour object))
    )

    (setf item (make-instance 'Event))
    (setf (Event-Year item) 2021)
    (setf (Event-Month item) 11)
    (setf (Event-Day item) 10)
    (setf (Event-Hour item) 14)
    (setf (Event-Name item) "Class")
    (setf (Event-Notes item) "This is text filler")
    (setf (Event-Notes item) "This is text filler 2")


    (format t "Year ~d~%" (Event-Year item))
    (format t "Month ~d~%" (Event-Month item))
    (format t "Day ~d~%" (Event-Day item))
    (format t "hour ~d~%" (Event-Hour item))
    (format t "Name ~d~%" (Event-Name item))
    (format t "Description/Notes ~d~%" (Event-Notes item))

    (getHour item)
    (print (timeUntil item 14))
    (getHour item)
    (print (timeUntil item 12))
    (getHour item)
    (print (timeUntil item 14))
    (getHour item)