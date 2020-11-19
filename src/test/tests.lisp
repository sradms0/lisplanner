(load "../main/event.lisp")

(setf item (make-instance 'Event))
(setf (Event-Year item) 2021)
(setf (Event-Month item) 11)
(setf (Event-Day item) 10)
(setf (Event-Hour item) 14)
(setf (Event-Name item) "Class")
(setf (Event-Notes item) "This is text filler")
(setf (Event-Notes item) "This is text filler 2")

(setf eventOne (make-instance 'Event))
(setf (Event-Year eventOne) 2022)
(setf (Event-Month eventOne) 13)
(setf (Event-Day eventOne) 15)
(setf (Event-hour eventOne) 10)
(setf (Event-Name eventOne) "Birthday")
(setf (Event-Notes eventOne) "This is text filler")

(setf eventTwo (make-instance 'Event))
(setf (Event-Year eventTwo) 2023)
(setf (Event-Month eventTwo) 5)
(setf (Event-Day eventTwo) 20)
(setf (Event-hour eventTwo) 5)
(setf (Event-Name eventTwo) "School")
(setf (Event-Notes eventTwo) "This is text filler")

;;(getEvent item)
(format t "Time Until Event Expected (True): ~d~%" (equal(timeUntil item 17) 21)) ;;Unit test One 
;; (getYear item)


;;(getEvent eventOne)
;;(format t "Time Until Event: ~d~%" (timeUntil eventOne 19)) ;;Unit test two
(format t "Time Until Event Expected (True): ~d~%" (equal(timeUntil eventOne 19) 15)) ;;Unit test Two 
(format t "Time Until Event Expected (False): ~d~%" (equal(timeUntil eventOne 19) 11)) ;;Unit test Two 
;; (getYear eventOne)

;;(getEvent eventTwo)
;; (print(equal(timeUntil eventTwo 15) 14)) ;; T
(format t "Time Until Event Expected (True): ~d~%" (equal(timeUntil eventTwo 15) 14)) ;;Unit test three 
;; (getYear eventTwo)
