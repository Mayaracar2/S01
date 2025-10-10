using System;
using System.Collections.Generic;

public class Feitico 
{
  public string NOME;

  public Feitico(string NOME){
    this.NOME = NOME;
  }
}

public class Grimorio
{
  List<Feitico> feiticos = new List<Feitico>();

  public void AdicionarFeitico(Feitico feitico){
    feiticos.Add(feitico);
  }

  public void mostrarFeiticos()
  {
    foreach (Feitico feitico in feiticos){
      Console.WriteLine(feitico.nome);
    }
  }
}

public class Ferramenta 
{
  public string NOME;

  public Ferramenta (string NOME)
  {
    this.NOME = NOME;
  }
}

public class Maga 
{
  public string NOME;
  public Grimorio grimorio;
  public List<Ferramenta> ferramentas = new List<Ferramenta>();

  public Maga(string NOME, List<Ferramenta> ferramentas){
    this.NOME = NOME;
    this.grimorio = new Grimorio();
    this.ferramentas = ferramentas;
  }

  public void mostrarFerramentas()
  {
    foreach (Ferramenta ferramenta in ferramentas)
    {
      Console.WriteLine(ferramenta.NOME);
    }
  }
}

class Program
{
  public static void Main (string[] args) 
  {
    List<Ferramenta> ferramentas = new List<Ferramenta>();
    ferramentas.Add(new Ferramenta("Espada"));
    ferramentas.Add(new Ferramenta("Livro de Feiticos"));
    ferramentas.Add(new Ferramenta("Lança"));

    Maga frieren = new Maga("Frieren", ferramentas);

    frieren.grimorio.AdicionarFeitico(new Feitico("Zoltraak"));
    frieren.grimorio.AdicionarFeitico(new Feitico("Escudo protetor"));
    frieren.grimorio.AdicionarFeitico(new Feitico("Magia de fogo"));

    Console.WriteLine($"Ferramentas de {frieren.NOME}: ");
    frieren.mostrarFerramentas();
    Console.WriteLine();
    Console.WriteLine($"Feiticos de {frieren.NOME}: ");
    frieren.grimorio.mostrarFeiticos();
  }
}
