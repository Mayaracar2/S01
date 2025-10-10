using System;
using System.Collections.Generic;

public class Pokemon
{
  
  public string NOME;

  public Pokemon(string NOME)
  {
    this.NOME = NOME;
  }

  public virtual void Atacar()
  {
    Console.WriteLine($"{NOME} lança Tackle");
  }
}

public class PokemonsDeFogo : Pokemon 
{
  public PokemonsDeFogo (string NOME) : base(NOME) {}
  
  public override void Atacar()
  {
    Console.WriteLine($"{NOME} lança Bola de Fogo");
  }
}
public class PokemonsDeAgua : Pokemon
{
  public PokemonsDeAgua (string NOME) : base(NOME) {}
  public override void Atacar()
  {
    Console.WriteLine($"{NOME} lança Jato de Água");
  }
}

class Program
{
  public static void Main (string[] args)
  {
    List<Pokemon> pokemons = new List<Pokemon>();
    pokemons.Add(new PokemonsDeFogo("Charizard"));
    pokemons.Add(new PokemonsDeAgua("Blastoise"));

    foreach(Pokemon pokemon in pokemons){
      pokemon.Atacar();
    }
  }
}
