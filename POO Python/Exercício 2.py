from abc import ABC, abstractmethod

class HEROI(ABC):
    def __init__(self, NOME, FUNCAO):
        self.NOME = NOME
        self.FUNCAO = FUNCAO

    @abstractmethod 
    def usar_ultimate(self):
        pass

class TANQUE(HEROI):
    def usar_ultimate(self):
        print(f"{self.NOME} ativando modo ataque!")

class DANO(HEROI):
    def usar_ultimate(self):
        print(f"{self.NOME} atenção com o dano!")

if __name__ == "__main__":
    print("=== Overwatch - Simulação de Ultimates ===\n")

    HEROIS = [TANQUE("HEROI1", "TANQUE"), DANO("HEROI2", "DANO")]

    for HEROI in HEROIS: 
        HEROI.usar_ultimate()
