package main
import "fmt"

func main() {
	var entrada int

	fmt.Print("Digite um número: ")
	fmt.Scanln(&entrada)

	restoDivisao := entrada % 2
	
	switch restoDivisao {
	case 0:
		fmt.Println("O valor informado é par")
	default:
		fmt.Println("O valor informado é ímpar")
	}
}
