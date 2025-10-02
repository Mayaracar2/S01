#include <iostream>

using namespace std;

class pessoa 
{
    protected:
    string nome;
    int idade;
};

class protagonista : public Pessoa 
{
    private:
    int nivel;

    public:
    protagonista(string nome, int nivel)
    {
      this->nome = nome;
      this->nivel = nivel;
    }

    void showprotagonista(protagonista) 
    {
      cout << "Nome: " << nome << endl;
      cout << "Nivel: " << nivel << endl;
    }
};

class Personagem : public Pessoa 
{
    private:
    int rank;

    public:
    personagem(string nome, int rank)
    {
      this->nome = nome;
      this->rank = rank;
    }

    void showpersonagem(personagem) 
    {
      cout << "Nome: " << nome << endl;
      cout << "Rank: " << rank << endl;
    }
};


int main() 
{
  protagonista prota("Makoto", 12);
  personagem pers("Naoto", 4);

  prota.showprotagonista(prota);
  cout << endl;
  pers.showpersonagem(pers);
  cout << endl;
  
  return 0;
}
