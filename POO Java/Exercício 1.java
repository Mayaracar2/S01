import java.util.ArrayList;

class Personagem {
    private String nome;
    private int idade;

    public Personagem(String nome, int idade) {
        this.nome = nome;
        this.idade = idade;
    }

    public String getNome() {
        return nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
}

class Mago extends Personagem {
    private String magia;

    public Mago(String nome, int idade, String magia) {
        super(nome, idade);
        this.magia = magia;
    }

    public String getMagia() {
        return magia;
    }

    public void setMagia(String magia) {
        this.magia = magia;
    }

    public String lancarFeitico() {
        return "O mago "+getNome()+" lançou o feitiço "+ magia;
    }
}
class Divisao {
    public String nome;

    public Divisao(String nome) {
        this.nome = nome;
    }
}

class Castelo {
    public String nome;
    private ArrayList<Divisao> divisoes;

    public Castelo(String nome) {
        this.nome = nome;
        this.divisoes = new ArrayList<>();
    }

    public void adicionarDivisao(Divisao divisao) {
        divisoes.add(divisao);
    }

    public void listarDivisoes() {
        System.out.println("Divisões do castelo "+nome+":");
        for(Divisao d : divisoes) {
            System.out.println("- "+d.nome);
        }
    }
}



public class Main {
    public static void main(String[] args) {
        Mago howL = new Mago("Paulo", 50, "Teletransporte");
        System.out.println(howL.lancarFeitico());

        Castelo castelo = new Castelo("Castelo Móvel");
        castelo.adicionarDivisao(new Divisao("Sala de Controle"));
        castelo.adicionarDivisao(new Divisao("Cozinha"));
        castelo.adicionarDivisao(new Divisao("Quarto secreto"));

        castelo.listarDivisoes();
    }
}
