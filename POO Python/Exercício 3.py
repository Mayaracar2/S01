class ARMA_CORPOA_CORPO:
    def __init__(self, NOME : str):
        self.NOME = NOME

    def __str__(self):
        return self.NOME
class PHANTOM_THIEVES:
    def __init__(self, NOME : str, ARMA : str):
        self.NOME = NOME
        self.ARMA = ARMA

    def __str__(self):
        return f"{self.NOME} usa {self.ARMA}"
class JOKER:
    def __init__(self, EQUIPE : list[PHANTOM_THIEVES]):
        self.ARMA = ARMA_CORPOA_CORPO("ESPADA")
        self.EQUIPE = EQUIPE

    def MOSTRAR_EQUIPE(self):
        for MEMBRO in self.EQUIPE:
            print(f" - {MEMBRO};\n")

if  __name__ == "__main__":
    MARIA = PHANTOM_THIEVES("MARIA", "FACA")
    MARIO = PHANTOM_THIEVES("MARIO", "CANIVETE")
    JORGE = PHANTOM_THIEVES("JORGE", "CHICOTE")

    JOKER = JOKER([MARIA, MARIO, JORGE])

    JOKER.MOSTRAR_EQUIPE()
