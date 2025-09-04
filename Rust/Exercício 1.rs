use std::io;

fn verificar_senha(senha: &str) -> bool {
    // Verifica comprimento
    if senha.len() < 8 {
        return false;
    }

    let mut tem_numero = false;
    let mut tem_maiuscula = false;

    for c in senha.chars() {
        if c.is_ascii_digit() {
            tem_numero = true;
        }
        if c.is_ascii_uppercase() {
            tem_maiuscula = true;
        }
    }

    senha.len() >= 8 && tem_numero && tem_maiuscula
}

fn main() {
    loop {
        println!("Digite sua senha:");

        let mut senha = String::new();
        io::stdin()
            .read_line(&mut senha)
            .expect("Falha ao ler entrada");

        let senha = senha.trim(); // remove \n do final

        if verificar_senha(senha) {
            println!("Senha válida! Acesso concedido.");
            break;
        } else {
            println!("Senha inválida! Tente novamente.");
        }
    }
}
