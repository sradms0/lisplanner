(load "../main/event.lisp")

(defun assert-equals (result expected)
  (if (equal result expected)
      (print "PASS")
      (print "FAIL (results should be equal)")))

(defun assert-not-equals (result expected)
  (if (not (equal result expected))
      (print "PASS")
      (print "FAIL (results should not be equal)")))

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

(setf eventThree (make-instance 'Event))
(setf (Event-Year eventThree) 2021)
(setf (Event-Month eventThree) 11)
(setf (Event-Day eventThree) 10)
(setf (Event-Hour eventThree) 14)
(setf (Event-Name eventThree) "Class")
(setf (Event-Notes eventThree) "This is text filler")
(setf (Event-Notes eventThree) "This is text filler 2")


(assert-equals (getEvent eventOne)
    (format t "Year: 2022\n"
     "Month: 13\n"
     "Day: 15\n" 
     "Hour: 10\n" 
     "Name: Birthday\n"
     "Description/Notes: This is text filler"))
(assert-equals (getYear eventOne) (format t "Year: 2022"))
(assert-equals (getHour eventOne) (format t "Hour 10"))

(assert-equals (timeUntil eventOne 19) 15)
(assert-not-equals (timeUntil eventOne 19) 11)
(assert-equals (timeUntil eventTwo 15) 14)
(assert-equals (timeUntil eventThree 17) 21)
