class Pokemon {
    #vida;
    constructor(nome, tipo, vidaInicial){
        this.nome = nome;
        this.tipo = tipo;
        this.#vida = vidaInicial;
    }

    getVida(){
        return this.#vida;
    }

    receberDano(dano){
        this.#vida -= dano;
        if (this.#vida < 0) this.#vida = 0;
    }

    atacar(alvo){
        const dano = 5;
        alvo.receberDano(dano);
        console.log(`${this.nome} utilizou Tackle em ${alvo.nome} e causou ${dano} de dano.`);
    }
}

class PokemonFogo extends Pokemon {
    constructor(nome, vidaInicial, bonus){
        super(nome, 'Fogo', vidaInicial);
        this.bonusAtaque = bonus;
    }

    atacar(alvo){
        const dano = 10 + this.bonusAtaque;
        alvo.receberDano(dano);
        console.log(`${this.nome} utilizou Bola de Fogo em ${alvo.nome} e causou ${dano} de dano.`);
    }
}

class PokemonAgua extends Pokemon {
    #curaBase;
    constructor(nome, vidaInicial, curaBase){
        super(nome, 'Água', vidaInicial);
        this.#curaBase = curaBase;
    }

    atacar(alvo){
        const dano = 8;
        alvo.receberDano(dano);
        console.log(`${this.nome} utilizou Jato D'água em ${alvo.nome} e causou ${dano} de dano.`);
        console.log(`${this.nome} recuperou ${this.#curaBase} de vida.`);
    }
}

const Pikachu = new Pokemon('Pikachu', 'Normal', 30)
const Gardevoir = new PokemonAgua('Gardevoir', 150, 15)
const Arcanine = new PokemonFogo('Arcanine', 110, 5)

let pokemons = [Pikachu, Gardevoir, Arcanine];

pokemons.forEach(pokemon => {
    pokemon.atacar(Pikachu);
    pokemon.atacar(Gardevoir);
    pokemon.atacar(Arcanine);
});

console.log("\n======= RESULTADO DA BATALHA =======");
pokemons.forEach(p => {
    console.log(`${p.nome} (${p.tipo}) - Vida: ${p.getVida()}`);
});
