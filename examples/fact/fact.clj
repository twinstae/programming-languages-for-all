(defn factorial [n]
  (cond
    (= n 0) 1
    (= n 1) 1
    :else (* n (factorial (- n 1)))))

(println "Enter a number:")
(try
  (let [number (Integer. (read-line))]
    (if (neg? number)
      (throw (IllegalArgumentException. "Invalid input. Please enter a non-negative integer."))
      (println (factorial number))))
  (catch NumberFormatException _ (println "Invalid input. Please enter a valid non-negative integer."))
  (catch IllegalArgumentException e (println (.getMessage e))))