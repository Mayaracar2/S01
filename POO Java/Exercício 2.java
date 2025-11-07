import java.util.ArrayList;

class Cafe {
  public String nome;
  public double precoBase;

  public Cafe(String nome, double precoBase) {
    this.nome = nome;
    this.precoBase = precoBase;
  }

  public double calcularPrecoFinal() {
    return precoBase;
  }
}

class CafeGourmet extends Cafe{
  public double bonusAroma;

  public CafeGourmet(String nome, double precoBase, double bonusAroma) {
    super(nome, precoBase);
    this.bonusAroma = bonusAroma;
  }

  @Override
  public double calcularPrecoFinal() {
    return precoBase + bonusAroma;
  }
}

class Menu {
  private ArrayList<Cafe> itens;

  public Menu() {
    this.itens = new ArrayList<>();
  }

  public void adicionarItem(Cafe item){
    itens.add(item);
  }

  public void listarItens(){
    for (Cafe item : itens) {
      System.out.println("Nome: " + item.nome + ", Pre├žo: " + item.calcularPrecoFinal());
    }
  }
}

class CafeLeblanc {
  private Menu _menu;

  public CafeLeblanc(Menu menu) {
    this._menu = menu;
  }

  public void receberPedido(Cafe cafe) {
    _menu.adicionarItem(cafe);
  }
}

public class Main {
  public static void main(String[] args) {
    Menu menu = new Menu();
    CafeLeblanc leblanc = new CafeLeblanc(menu);

    Cafe comum = new Cafe("Café Preto", 7.00);
    CafeGourmet gourmet = new CafeGourmet("Café Gourmet", 12.50, 5.00);

    leblanc.receberPedido(comum);
    leblanc.receberPedido(gourmet);

    System.out.println("Menu da Cafeteria Leblanc:");
    menu.listarItens();
  }
}
