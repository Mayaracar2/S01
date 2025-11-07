import java.util.HashMap;

interface IRastreavel {
  String obterCoordenadas();
}

class Poder {
  public String nome;

  public Poder(String nome) {
    this.nome = nome;
  }
}

abstract class Entidades implements IRastreavel {
  public String nome;
  protected String localizacao;
  protected Poder poder;

  public Entidades(String nome, String local, Poder poder) {
    this.nome = nome;
    this.localizacao = local;
    this.poder = poder;
  }
  
  @Override
  public abstract String obterCoordenadas();
}

class Youkai extends Entidades {
  public Youkai(String nome, String local, Poder poder){
    super(nome, local, poder);
  }

  @Override
  public String obterCoordenadas() {
    return "Youkai: " + nome + " estão em " + localizacao + " com o poder " + poder.nome;
  }
}

class Alien extends Entidades {
  private String planetaOrigem;
  private String ovni;

  public Alien(String nome, String planetaOrigem, String ovni, Poder poder) {
      super(nome, planetaOrigem, poder);
      this.planetaOrigem = planetaOrigem;
      this.ovni = ovni;
  }

  @Override
  public String obterCoordenadas() {
      return "Alien " + nome + " vindo do planeta " + planetaOrigem + 
             " em " + ovni + " com poder " + poder.nome;
  }
}

class Registros {
  private String nomeEquipe;
  private HashMap<String, Entidades> avistamentos;

  public Registros(String nomeEquipe) {
      this.nomeEquipe = nomeEquipe;
      this.avistamentos = new HashMap<>();
  }

  public boolean registrarAvistamento(Entidades entidade) {
      if (!avistamentos.containsKey(entidade.nome)) {
          avistamentos.put(entidade.nome, entidade);
          return true;
      }
      return false;
  }

  public void listarAvistamentos() {
      System.out.println("=== Registros da equipe " + nomeEquipe + " ===");
      for (Entidades e : avistamentos.values()) {
          System.out.println(e.obterCoordenadas());
      }
  }
}

public class Main {
    public static void main(String[] args) {
        Poder poder1 = new Poder("Gelo");
        Poder poder2 = new Poder("Fogo");

        Youkai y1 = new Youkai("Suzana", "Itália", poder2);
        Alien a1 = new Alien("Zoreba", "Mercúrio", "Nave", poder1);

        Registros registro = new Registros("Detetives Ocultos");
        registro.registrarAvistamento(y1);
        registro.registrarAvistamento(a1);
        registro.registrarAvistamento(y1);

        registro.listarAvistamentos();
    }
}
