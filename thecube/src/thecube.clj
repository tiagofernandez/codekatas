(ns thecube)

(defn sub-digits [code]
  (reduce (fn [sum digit] (+ sum (Integer/parseInt (str digit)))) 0 code))

(defn prime? [num]
  (loop [divisor 2]
    (cond
     (> (* divisor divisor) num) true
     (= (rem num divisor) 0) false
     :else (recur (inc divisor)))))

(defn contains-prime-number [code1 code2 code3]
  (or (prime? (sub-digits code1))
      (prime? (sub-digits code2))
      (prime? (sub-digits code3))))