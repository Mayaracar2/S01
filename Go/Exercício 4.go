package main
import "fmt"

func autenticarDados(login, chave string) bool
{
	if login == "senha" && chave == "admin"
  {
		return true
	} else
  {
		return false
	}
}

func main() {
	var entradaLogin string
	var entradaChave string

	for {
		fmt.Print("Informe o login: ")
		fmt.Scanln(&entradaLogin)

		fmt.Print("Informe a chave de acesso: ")
		fmt.Scanln(&entradaChave)

		if autenticarDados(entradaLogin, entradaChave) == true
    {
			fmt.Println("Acesso autorizado!")
			break
		} else {
			fmt.Println("Credenciais inválidas. Tente novamente.")
		}
	}
}
