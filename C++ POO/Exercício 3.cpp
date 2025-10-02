#include <iostream>

using namespace std;

class Pessoa 
{
    public:
    string nome;

    pessoa(string nome)
    {
      this->nome=nome;
    }

    virtual void apresentar()
    {
      cout << "Olá, meu nome é " << nome << " e sou uma pessoa." << endl;
    }

    virtual ~pessoa(){}
};

class Professor : public Pessoa 
{
    public:
    string disciplina;

    professor(string nome, string disciplina) : pessoa(nome)
    {
      this->nome=nome;
      this->disciplina = disciplina;
    }

    void apresentar() override
    {
      cout << "Olá, meu nome é " << nome << " e sou um professor de " << disciplina << "." << endl;
    }
};

class Aluno : public pessoa 
{
    public:
    string curso;
    int matricula;

    Aluno(string nome, string curso, int matricula) : pessoa(nome)
    {
      this->nome=nome;
      this->curso=curso;
      this->matricula=matricula;
    }

    void apresentar() override
    {
      cout << "Olá, meu nome é " << nome << " e sou um aluno de " << curso << "." << endl;
    }
};

int main()
{
  pessoa* pessoa1 = new Professor("Marcelo", "Paradigmas da Programação");
  pessoa* pessoa2 = new Aluno("Maria", "Engenharia de Software", 267);

  pessoa1->apresentar();
  cout << endl;
  pessoa2->apresentar();
  
  delete pessoa2;
  delete pessoa1;
  
  return 0;
}
