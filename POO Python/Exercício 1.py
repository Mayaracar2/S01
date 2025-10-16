class PERSONAGEM:
  
    def __init__(self, VIDA: int, RESISTENCIA: int):
        self._VIDA = VIDA
        self._RESISTENCIA = RESISTENCIA

    def get_VIDA(self):
        return self._VIDA

    def set_VIDA(self, NOVA_VIDA):
        self._VIDA = NOVA_VIDA

    def __str__(self):
        return f"Personagem com {self._VIDA} de vida."


class CAVALEIRO(PERSONAGEM):

    def __init__(self, VIDA: int, RESISTENCIA: int, ARMADURA_PESADA: bool):
        super().__init__(VIDA, RESISTENCIA)
        self.__ARMADURA_PESADA = ARMADURA_PESADA

    def __str__(self):
        return f"Cavaleiro com {self._VIDA} de vida"

x1 = CAVALEIRO(VIDA=100, RESISTENCIA=30, ARMADURA_PESADA=True)
print(x1)

print("Vida atual:", x1.get_VIDA())
x1.set_VIDA(70)
print("Nova vida:", x1.get_VIDA())
