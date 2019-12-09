                                        ; mass / 3 round down subtract 2
(defun calc-fuel-full
    (starting-mass)
  "this finds fuel for starting mass"
    (let ((current-mass (- (/ starting-mass 3) 2)))
      (if (<= current-mass 0) 0
        (+ current-mass (calc-fuel-full current-mass)))
  ))




                                        ; (dolist (var list result) body)
(defun aoc2019-day1-part2
    (day1-input)
  "this runs calc-fuel-full on each item of the list"
  (let result (dolist (current-mod day1-input result) (+ result (calc-fuel-full current-mod) )
 )))

(defun aoc2019-solve (input)
  "handles formatting of the input and output such that it will display reasonably when called"
  (aoc2019-day1-part2 input))

(provide 'day1)

