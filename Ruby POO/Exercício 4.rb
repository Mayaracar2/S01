
module Rastreavel
  def obter_localizacao(hora)
    "Localização registrada às #{hora}: #{@localizacao}"
  end
end

module Perigoso
  def calcular_risco
    rand(1..10)
  end
end

class Participante
  attr_accessor :nome, :localizacao

  def initialize(nome, localizacao)
    @nome = nome
    @localizacao = localizacao
  end
end

class Detetive < Participante
  include Rastreavel

  def to_s
    "Detetive #{@nome} em #{@localizacao}"
  end
end

class MestreDoCrime < Participante
  include Rastreavel
  include Perigoso

  def to_s
    "Mestre do Crime #{@nome} em #{@localizacao}"
  end
end

class Cenario
  def initialize
    @participantes = []
  end

  def adicionar_participante(participante)
    @participantes << participante
  end

  def identificar_ameacas
    @participantes.select { |p| p.respond_to?(:calcular_risco) }
  end

  def imprimir_ameacas
    ameacas = identificar_ameacas
    if ameacas.empty?
      puts "Nenhum MestreDoCrime detectado."
    else
      puts "\nAmeaças encontradas:"
      ameacas.each do |a|
        puts "#{a.nome} (Risco: #{a.calcular_risco})"
      end
    end
  end
end

cenario = Cenario.new

puts "Digite a localização atual de Sherlock:"
local_sherlock = gets.chomp
puts "Digite a localização atual de Moriarty:"
local_moriarty = gets.chomp

sherlock = Detetive.new("Sherlock", local_sherlock)
moriarty = MestreDoCrime.new("Moriarty", local_moriarty)

cenario.adicionar_participante(sherlock)
cenario.adicionar_participante(moriarty)

cenario.imprimir_ameacas
