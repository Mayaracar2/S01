from abc import abstractmethod

class CIBERNETICO:
    @abstractmethod
    def REALIZAR_HACK(self):
        pass
class IMPLANTE:
    def __init__(self, CUSTO : int, FUNCAO : str):
        self.CUSTO = CUSTO
        self.FUNCAO = FUNCAO

    def __str__(self):
        return f"IMPLANTE ({self.FUNCAO}, CUSTO: {self.CUSTO})"
class NET_RUNNER(CIBERNETICO):
    def __init__(self, NOME : str, CUSTO_IMPLANTE: int, FUNCAO_IMPLANTE: str):
            self.NOME = NOME
            self.IMPLANTE = IMPLANTE(CUSTO_IMPLANTE, FUNCAO_IMPLANTE)
    def REALIZAR_HACK(self):
        print(f"{self.NOME} realiza hack usando {self.IMPLANTE.FUNCAO} (Custo: {self.IMPLANTE.CUSTO})")
class FACCAO:
    def __init__(self, MEMBROS: list[CIBERNETICO]):
        self.MEMBROS = MEMBROS

    def ATACAR(self):
        for MEMBRO in self.MEMBROS:
            membro.REALIZAR_HACK()

if  __name__ == "__main__":
    RUNNER1 = NET_RUNNER("Malware", 800, "Vírus")
    RUNNER2 = NET_RUNNER("Phishing", 500, "Roubo de credenciais de login")
    RUNNER3 = NET_RUNNER(" DDoS", 1000, "torna o site ou servidor indisponível")

    FACCAO = FACCAO([RUNNER1, RUNNER2, RUNNER3])
    FACCAO.ATACAR()
