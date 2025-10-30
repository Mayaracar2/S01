class IRastreavel {
    rastrearLocal(latitude, longitude){
        throw new Error('Este método exige uma implementação');
    }
}

class Hunter extends IRastreavel{
    #nome;
    #idade;
    #localizacao;

    constructor(nome, idade, localizacao){
        super();
        this.#nome = nome;
        this.#idade = idade;
        this.#localizacao = localizacao;
    }

    getNome(){
        return this.#nome;
    }

    getLocalizacao(){
        return this.#localizacao
    }

    rastrearLocal(lat, long) {
        return `Hunter Base ${this.#nome} rastreado em [${lat}, ${long}].`;
    }
}

class Especialista extends Hunter {
    #habilidadeNen;

    constructor(nome, idade, localizacao, habilidade){
        super(nome, idade, localizacao);
        this.#habilidadeNen = habilidade;
    }

    rastrearLocal(lat, long) {
        return `[Especialista] ${this.getNome()} (${this.#habilidadeNen}) localizou a ameaça em [${lat}, ${long}].`;
    }
}

class Manipulador extends Hunter {
    #alvoAtual;

    constructor(nome, idade, localizacao, alvo){
        super(nome, idade, localizacao);
        this.#alvoAtual = alvo;
    }

    rastrearLocal(lat, long) {
        return `[Manipulador] ${this.getNome()} (Alvo: ${this.#alvoAtual}) está em patrulha em [${lat}, ${long}].`;
    }
}

class Batalhao {
    #hunters

    constructor(){
        this.#hunters = new Set();
    }

    adicionarHunter(hunter){
        const nomeDuplicado = Array.from(this.#hunters).some(h => h.getNome() === hunter.getNome());

        if(nomeDuplicado){
            console.log(`O ${hunter.getNome()} já está no Batalhão.`);
            return false;
        }

        this.#hunters.add(hunter);
        console.log(`O ${hunter.getNome()} foi adicionado ao Batalhão`);
        return true;
    }

    iniciarRastreamento(lat, long) {
        const resultadosRastreamento = [];

        console.log(`\n--- INICIANDO RASTREAMENTO EM [${lat}, ${long}] ---`);

        for (const hunter of this.#hunters) {
            const mensagem = hunter.rastrearLocal(lat, long);
            resultadosRastreamento.push(mensagem);
            console.log(`-> ${mensagem}`);
        }

        return resultadosRastreamento;
    }
}

console.log("=========================================");
console.log("         EXECUÇÃO DO BATALHÃO HUNTER     ");
console.log("=========================================");

const especialistaA = new Especialista("Gabriel", 35, "Ruínas da Cidade Perdida", "Arqueologia");
const especialistaB = new Especialista("Kaique", 17, "Sede da Associação", "Corrente Especial");
const manipuladorC = new Manipulador("Shark", 24, "Floresta Amazônica", "Controle de Pessoas");
const manipuladorD = new Manipulador("Bianca", 24, "Floresta Amazônico", "Controle de Pessoas");

const batalhaoPrincipal = new Batalhao();

console.log("\n--- ADIÇÃO DE HUNTERS ---");
batalhaoPrincipal.adicionarHunter(especialistaA);
batalhaoPrincipal.adicionarHunter(manipuladorC);
batalhaoPrincipal.adicionarHunter(especialistaB);
batalhaoPrincipal.adicionarHunter(manipuladorD); 


const latitude = 34.0522;
const longitude = -118.2437;

const rastreamentos = batalhaoPrincipal.iniciarRastreamento(latitude, longitude);

console.log("\n--- RESULTADOS FINAIS ---");
rastreamentos.forEach(r => console.log(r));
