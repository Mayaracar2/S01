package main
import "fmt"

func gerarSequencia(qtd int) {
  var contador int = 0
	var primeiro int = 0
	var segundo int = 1
	
	
	for contador < qtd {
		fmt.Print(primeiro, " ")
		primeiro, segundo = segundo, primeiro+segundo
		contador++
	}
	fmt.Println()
}

func main() {
	var limite int

	fmt.Print("Quantos termos da sequência de Fibonacci você deseja? ")
	fmt.Scanln(&limite)

	gerarSequencia(limite)
}
