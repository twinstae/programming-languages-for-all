pub fn is_isogram(s: &str) -> bool {
    let mut seen = std::collections::HashSet::new();
    for c in s.to_lowercase().chars().filter(|c| c.is_alphabetic()) {
        if !seen.insert(c) {
            return false;
        }
    }
    true
}
