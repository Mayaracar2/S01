using System;

public class MembroDaSociedade 
{
  private string NOME;
  private string RACA;
  private string FUNCAO;

  public MembroDaSociedade(string NOME, string RACA, string FUNCAO)
  {
    this.NOME = NOME;
    this.RACA = RACA;
    this.FUNCAO = FUNCAO;
  }

  public void Descrever(){
    Console.WriteLine($" Nome: {NOME};\n Raça: {RACA};\n Função: {FUNCAO}.\n");
  }
}

class Program
{
  public static void Main (string[] args)
  {
    MembroDaSociedade Aragorn = new MembroDaSociedade("ARAGORN", "HUMANO", "GUARDIÃO");
    MembroDaSociedade Legolas = new MembroDaSociedade("LEGOLAS", "ELFO", "ARQUEIRO");
    Aragorn.Descrever();
    Legolas.Descrever();
  }
}
