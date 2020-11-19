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

    (defmethod getHour ((object Event))
        (format t "Hour ~d~%" (Event-Hour object))
    )

    (defmethod getEvent ((object Event))
        (format t "Year: ~d~%" (Event-Year object))
        (format t "Month: ~d~%" (Event-Month object))
        (format t "Day: ~d~%" (Event-Day object))
        (format t "Hour: ~d~%" (Event-hour object))
        (format t "Name: ~d~%" (Event-Name object))
        (format t "Description/Notes: ~d~%" (Event-Notes object))
    )

    (setf item (make-instance 'Event))
    (setf (Event-Year item) 2021)
    (setf (Event-Month item) 11)
    (setf (Event-Day item) 10)
    (setf (Event-Hour item) 14)
    (setf (Event-Name item) "Class")
    (setf (Event-Notes item) "This is text filler")
    (setf (Event-Notes item) "This is text filler 2")


    ;; (getEvent item)
    ;; (getHour item)
    ;; (print (timeUntil item 14))
    ;; (getHour item)
    ;; (print (timeUntil item 12))
    ;; (getHour item)
    ;; (print (timeUntil item 14))
    ;; (getHour item)

    (getEvent item)
    (format t "Time Until Event: ~d~%" (timeUntil item 17)) ;;Unit test One
    (getYear item)

    (getEvent eventOne)
    (format t "Time Until Event: ~d~%" (timeUntil eventOne 19)) ;;Unit test two
    (getYear eventOne)

    (getEvent eventTwo)
    (format t "Time Until Event: ~d~%" (timeUntil eventTwo 15)) ;;Unit test three
    (getYear eventTwo)