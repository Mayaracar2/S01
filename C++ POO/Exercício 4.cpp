
#include <iostream>
#include <list>

using namespace std;

class Servivo 
{
    public:
    string nome;

    Servivo(string nome) 
    {
        this->nome=nome;
    }

    virtual void apresentar() 
    {
      cout << "Nome: " << nome << " sou ser vivo." << endl;
    }

    virtual ~Servivo() {};
};

class Humano : public SerVivo 
{
    public:
    Humano(string nome) : Servivo(nome) 
    {
      this->nome=nome;
    }

    void apresentar() override 
    {
      cout << "Olá, meu nome é " << nome << " prazer em conhecer, sou um humano." << endl;
    }
};

class Elfo : public Servivo 
{
    public:
    Elfo(string nome) : Servivo(nome)
    {
      this->nome=nome;
    }

    void apresentar() override
    {
      cout << "Prazer em conhecer, me chamo " << nome << " sou um elfo." << endl;
    }
};

class Fada : public Servivo 
{
    public:
    Fada(string nome) : Servivo(nome)
    {
      this->nome=nome;
    }

    void apresentar() override 
    {
      cout << "Ei! Escute! Escute! Meu nome é " << nome << " sou uma fada." << endl;
    }
};

int main() 
{
  list<Servivo*> seres;

  seres.push_back(new Humano("Maria"));
  seres.push_back(new Elfo("Grow"));
  seres.push_back(new Fada("Sininho"));

  for (Servivo* ser : seres)
    ser->apresentar();
  
  for (Servivo* ser : seres)
    delete ser;

  seres.clear();
  
  return 0;
}
