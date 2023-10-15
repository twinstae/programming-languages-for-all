(defn create-matrix [s]
  (let [rows (map #(map #(Integer. %) (clojure.string/split % #" ")) (clojure.string/split s #"\n"))]
    {:row (fn [index] (dec index) (nth rows index))
     :column (fn [index] (map #(nth % (dec index)) rows))}))