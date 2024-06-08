use regex::Regex;

pub fn is_date(date: &str) -> bool {
    let re = Regex::new(r"^\d{4}-\d{2}-\d{2}$").unwrap();
    println!("Did our date match? {}", re.is_match(date));
    re.is_match(date)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = is_date("2024-12-02");
        assert_eq!(result, true);
    }
}
