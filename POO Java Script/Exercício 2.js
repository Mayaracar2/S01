class IExplorador{
    explorarTerritorio(){
        throw new Error(`Este método exige uma implementação`);
    }
}

class ODM_Gear{
    #gasRestante;

    constructor(modelo){
        this.modelo = modelo;
        this.#gasRestante = 100;
    }

    usarGas(qtd){
        this.#gasRestante -= qtd;
        if (this.#gasRestante < 0) this.#gasRestante = 0;
    }

    getGas(){
        return this.#gasRestante;
    }
}

class Soldado extends IExplorador{
    #gear;

    constructor(nome, modeloGear){
        super();
        this.nome = nome;
        this.#gear = new ODM_Gear(modeloGear);
    }

    explorarTerritorio(){
        this.#gear.usarGas(10);
        console.log(`O soldado ${this.nome} está explorando com seu ${this.#gear.modelo}.`);
    }

    verificarEquipamento(){
        console.log(`O soldado ${this.nome} carrega ${this.#gear.modelo} com ${this.#gear.getGas()}% de gás restante.`)
    }
}

class Esquadrao extends IExplorador{
    constructor(lider, membrosIniciais = []){
        super();
        this.lider = lider;
        this.membros = [lider, ...membrosIniciais];
    }

    adicionarMembro(soldado){
        this.membros.push(soldado);
        console.log(`Novo membro ${soldado.nome} adicionado ao esquadrão do ${this.lider.nome}.`)
    }

    explorarTerritorio(){
        console.log(`\n=== ESQUADRÃO DO ${this.lider.nome} EM EXPLORAÇÃO ===`);
        return this.membros.map(m => m.explorarTerritorio());
    }

    relatarStatus(){
        return this.membros.map(m => m.verificarEquipamento());
    }
}

const Levi = new Soldado('Levi', 'Modelo-A');
const Paulo = new Soldado('Paulo', 'Modelo-B');
const Samuel = new Soldado('Samuel', 'Modelo-C');
const Caio = new Soldado('Caio', 'Modelo-D');

let esquadraoLevi = new Esquadrao(Levi, [Paulo, Samuel]);

esquadraoLevi.adicionarMembro(Caio);
for (let i=0; i<2; i++) {
    esquadraoLevi.explorarTerritorio();
    esquadraoLevi.relatarStatus();
}
