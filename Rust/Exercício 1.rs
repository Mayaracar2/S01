use std::io;

fn checar_senha(texto: &str) -> bool {
    // Verifica comprimento
    if texto.len() < 8 {
        return false;
    }

    let mut contem_digito = false;
    let mut contem_maiuscula = false;

    for caractere in texto.chars() {
        if caractere.is_ascii_digit() {
            contem_digito = true;
        }
        if caractere.is_ascii_uppercase() {
            contem_maiuscula = true;
        }
    }

    texto.len() >= 8 && contem_digito && contem_maiuscula
}

fn main() {
    loop {
        println!("Digite sua senha:");

        let mut entrada = String::new();
        io::stdin()
            .read_line(&mut entrada)
            .expect("Falha ao ler entrada");

        let senha_limpa = entrada.trim(); // remove \n do final

        if checar_senha(senha_limpa) {
            println!("Senha válida! Acesso concedido.");
            break;
        } else {
            println!("Senha inválida! Tente novamente.");
        }
    }
}
