fn media_ponderada(avaliacao1: f64, avaliacao2: f64, avaliacao3: f64) -> f64 {
    let peso_a = 2.0;
    let peso_b = 3.0;
    let peso_c = 5.0;

    (avaliacao1 * peso_a + avaliacao2 * peso_b + avaliacao3 * peso_c) / (peso_a + peso_b + peso_c)
}

fn main() {
    let prova1 = 7.5;
    let prova2 = 8.0;
    let prova3 = 9.2;

    let resultado = media_ponderada(prova1, prova2, prova3);

    println!("Notas: {}, {}, {}", prova1, prova2, prova3);
    println!("Média ponderada: {:.2}", resultado);

    if resultado >= 7.0 {
        println!("Resultado: Aprovado");
    } else {
        println!("Resultado: Reprovado");
    }
}
