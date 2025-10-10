using System;

public class MonstroSombrio 
{
  public string NOME;
  
  public MonstroSombrio(string NOME)
  {
    this.NOME = NOME;
  }

  public virtual void Mover()
  {
    Console.WriteLine($"O {NOME}(monstro) esta movendo-se");
  }
}

public class Zumbi : MonstroSombrio 
{
  public Zumbi(string NOME) : base(NOME){}

  public override void Mover()
  {
    Console.WriteLine($"O {NOME}(zumbi) esta arrastando-se");
  }
}

public class Espectro : MonstroSombrio
{
  public Espectro(string NOME) : base(NOME){}

  public override void Mover()
  {
    Console.WriteLine($"O {NOME}(espectro) esta voando");
  }
}

class Program
{
  public static void Main (string[] args)
  {
    MonstroSombrio[] monstros = new MonstroSombrio[4];

    monstros[0] = new Zumbi("nzumbe");
    monstros[1] = new Zumbi("Baby zombie");
    monstros[2] = new Espectro("EstrelaEmEbano");
    monstros[3] = new Espectro("NebulosaNegra");

    foreach(MonstroSombrio monstro in monstros){
      monstro.Mover();
    }
  }
}
