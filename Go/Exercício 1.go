package main
import "fmt"

func avaliarValor(valor int) string {
	if valor > 0 {
		return "Positivo"
	} else if valor < 0 {
		return "Negativo"
	} else {
		return "Zero"
	}
}

func main() {
	var entrada int

	fmt.Print("Digite um número: ")
	fmt.Scanln(&entrada)

	fmt.Println(avaliarValor(entrada))
}
