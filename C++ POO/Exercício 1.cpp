
#include <iostream>
using namespace std;

class personagem
{
    public:
    string nome;
    int nivel;
    int dano;
    int vida;

    personagem(string nome, int nivel, int dano, int vida)
    {
      this->nome=nome;
      this->nivel=nivel;
      this->dano=dano;
      this->vida=vida;
    }

    void atacar(personagem &inimigo)
    {
      cout << "O " << this->nome << " atacou o " << inimigo.nome << " e causou " << this->dano << " de dano." << endl;
      inimigo.vida -= this->dano;
    }
};

int main() 
{
  personagem Centauro("Centauro", 3, 10, 230);
  
  personagem Anjo("Anjo", 4, 8, 178);

  Anjo.atacar(Centauro);

  cout << endl;
  cout << "Status do Centauro: " << endl;
  cout << "Nome: " << Centauro.nome << endl;
  cout << "Vida: " << Centauro.vida << endl;
  cout << "Nivel: " << Centauro.nivel << endl;
  cout << "Dano: " << Centauro.dano << endl;
  cout << endl;
  
  cout << "Status do Anjos " << endl;
  cout << "Nome: " << Anjos.nome << endl;
  cout << "Vida: " << Anjos.vida << endl;
  cout << "Nivel: " << Anjos.nivel << endl;
  cout << "Dano: " << Anjo.dano << endl;
  cout << endl;
  
  return 0;
}
