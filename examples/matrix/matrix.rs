struct Matrix {
    rows: Vec<Vec<usize>>,
}

impl Matrix {
    fn new(s: &str) -> Self {
        let rows = s
            .lines()
            .map(|line| {
                line.split_whitespace()
                    .map(|num| num.parse::<usize>().unwrap())
                    .collect()
            })
            .collect();

        Matrix { rows }
    }

    fn row(&self, index: usize) -> Vec<usize> {
        self.rows[index - 1].clone()
    }

    fn column(&self, index: usize) -> Vec<usize> {
        self.rows.iter().map(|row| row[index - 1]).collect()
    }
}
