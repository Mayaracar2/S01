use std::io;

fn eh_par(numero: i32) -> bool 
  {
    numero % 2 == 0
  }

fn main() 
  {
    let mut entrada = String::new();

    println!("Jogador 1, escolha 'par' ou 'impar':");
    io::stdin()
        .read_line(&mut entrada)
        .expect("Erro ao ler a entrada.");
    let escolha_jogador1 = entrada.trim().to_lowercase();
    entrada.clear();

    println!("Jogador 1, digite seu número:");
    io::stdin()
        .read_line(&mut entrada)
        .expect("Erro ao ler o número.");
    let numero1: i32 = entrada.trim().parse().expect("Digite um número válido!");
    entrada.clear();

    println!("Jogador 2, digite seu número:");
    io::stdin()
        .read_line(&mut entrada)
        .expect("Erro ao ler o número.");
    let numero2: i32 = entrada.trim().parse().expect("Digite um número válido!");

    let soma = numero1 + numero2;

    let soma_par = eh_par(soma);

    println!("\n=== Resultado do Jogo ===");
    println!("Jogador 1 escolheu: {}", escolha_jogador1);
    println!("Número do Jogador 1: {}", numero1);
    println!("Número do Jogador 2: {}", numero2);
    println!("Soma dos números: {}", soma);
    println!("A soma é: {}", if soma_par { "par" } else { "ímpar" });

    if (soma_par && escolha_jogador1 == "par") || (!soma_par && escolha_jogador1 == "impar")
    {
        println!(" Jogador 1 venceu!");
    } else {
        println!(" Jogador 2 venceu!");
    }
}
