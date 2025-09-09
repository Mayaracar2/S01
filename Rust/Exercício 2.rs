use std::io;

fn verificar_par(valor: i32) -> bool {
    valor % 2 == 0
}

fn main() {
    let mut buffer = String::new();

    println!("Participante 1, escolha 'par' ou 'impar':");
    io::stdin()
        .read_line(&mut buffer)
        .expect("Erro ao ler a entrada.");
    let escolha_p1 = buffer.trim().to_lowercase();
    buffer.clear();

    println!("Participante 1, digite seu número:");
    io::stdin()
        .read_line(&mut buffer)
        .expect("Erro ao ler o número.");
    let jogada_p1: i32 = buffer.trim().parse().expect("Digite um número válido!");
    buffer.clear();

    println!("Participante 2, digite seu número:");
    io::stdin()
        .read_line(&mut buffer)
        .expect("Erro ao ler o número.");
    let jogada_p2: i32 = buffer.trim().parse().expect("Digite um número válido!");

    let resultado_soma = jogada_p1 + jogada_p2;
    let resultado_par = verificar_par(resultado_soma);

    println!("\n=== Resultado do Jogo ===");
    println!("Participante 1 escolheu: {}", escolha_p1);
    println!("Número do Participante 1: {}", jogada_p1);
    println!("Número do Participante 2: {}", jogada_p2);
    println!("Soma dos números: {}", resultado_soma);
    println!("A soma é: {}", if resultado_par { "par" } else { "ímpar" });

    if (resultado_par && escolha_p1 == "par") || (!resultado_par && escolha_p1 == "impar") {
        println!(" Participante 1 venceu!");
    } else {
        println!(" Participante 2 venceu!");
    }
}
