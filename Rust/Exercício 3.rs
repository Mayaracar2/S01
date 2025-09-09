use std::io;

fn mostrar_tabuada(base: i32, inicio: i32, fim: i32) {
    println!("\n=== Tabuada do {} ===", base);
    for fator in inicio..=fim {
        println!("{} x {} = {}", base, fator, base * fator);
    }
}

fn main() {
    let mut buffer = String::new();

    println!("Digite o número da tabuada:");
    io::stdin()
        .read_line(&mut buffer)
        .expect("Erro ao ler o número!");
    let base: i32 = buffer.trim().parse().expect("Digite um número válido!");
    buffer.clear();

    println!("Digite o limite inicial:");
    io::stdin()
        .read_line(&mut buffer)
        .expect("Erro ao ler o número!");
    let inicio: i32 = buffer.trim().parse().expect("Digite um número válido!");
    buffer.clear();

    println!("Digite o limite final:");
    io::stdin()
        .read_line(&mut buffer)
        .expect("Erro ao ler o número!");
    let fim: i32 = buffer.trim().parse().expect("Digite um número válido!");

    mostrar_tabuada(base, inicio, fim);
}
