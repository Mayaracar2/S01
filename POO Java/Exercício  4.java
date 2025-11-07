import java.util.LinkedHashSet;
import java.util.HashMap;

class PadraoAtaque {
  public String nome;
  public int dano;

  public PadraoAtaque(String nome, int dano) {
    this.nome = nome;
    this.dano = dano;
  }

  @Override
    public String toString() {
        return nome + " (" + dano + " de dano)";
    }
}

class Boss {
  public String nome;
  protected String idBoss;
  protected String pontoFraco;
  private LinkedHashSet<PadraoAtaque> moveset;

  public Boss(String nome, String id, String fracoContra) {
      this.nome = nome;
      this.idBoss = id;
      this.pontoFraco = fracoContra;
      this.moveset = new LinkedHashSet<>();
  }

  public void adicionarAtaque(PadraoAtaque ataque) {
      moveset.add(ataque);
  }

  public void iniciarFase() {
      System.out.println("Iniciando batalha contra o Boss " + nome + "!");
      System.out.println("Ponto fraco: " + pontoFraco);
      System.out.println("Ataques:");
      for (PadraoAtaque a : moveset) {
          System.out.println(" - " + a);
      }
  }
}

class BossMagico extends Boss {
    public BossMagico(String nome, String id, String fracoContra) {
        super(nome, id, fracoContra);
    }

    @Override
    public void iniciarFase() {
        System.out.println("O Boss MÁGICO " + nome + " surge no campo de batalha!");
        super.iniciarFase();
    }
}

class Batalha {
  private HashMap<String, Boss> arena;

  public Batalha() {
      this.arena = new HashMap<>();
  }

  public void adicionarBoss(Boss boss) {
      if (!arena.containsKey(boss.idBoss)) {
          arena.put(boss.idBoss, boss);
      }
  }

  public void iniciarBatalha(String idBoss) {
      Boss boss = arena.get(idBoss);
      if (boss != null) {
          boss.iniciarFase();
      } else {
          System.out.println("Nenhum boss encontrado com o ID: " + idBoss);
      }
  }
}

public class Main {
  public static void main(String[] args) {
      PadraoAtaque fogo = new PadraoAtaque("Chamas", 12);
      PadraoAtaque raio = new PadraoAtaque("Relâmpago", 15);
      PadraoAtaque gelo = new PadraoAtaque("Sopro", 9);


      Boss b1 = new Boss("Gnomo", "B01", "Ataque");
      b1.adicionarAtaque(fogo);
      b1.adicionarAtaque(gelo);

      BossMagico b2 = new BossMagico("Fada", "B02", "Magia");
      b2.adicionarAtaque(raio);
      b2.adicionarAtaque(gelo);

      Batalha arena = new Batalha();
      arena.adicionarBoss(b1);
      arena.adicionarBoss(b2);

      arena.iniciarBatalha("B001");
      System.out.println();
      arena.iniciarBatalha("B002");
  }
}
