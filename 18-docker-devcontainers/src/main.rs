fn main() {
    println!("Hello from inside a devcontainer!");
    println!("Rust version: {}", get_rust_info());
}

fn get_rust_info() -> String {
    format!("Compiled successfully")
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_get_rust_info() {
        let info = get_rust_info();
        assert_eq!(info, "Compiled successfully");
    }
}
