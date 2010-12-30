(ns test-thecube
  (:use clojure.test thecube))

(deftest test-contains-prime-number
  (is (= (contains-prime-number "28733" "13412" "96476") true)))