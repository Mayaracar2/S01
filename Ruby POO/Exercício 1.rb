class Drink
  attr_accessor :nome
  
  def initialize(nome, preco_base)
    @nome = nome 
    @preco_base = preco_base
  end

  def preco_base
    @preco_base
  end

  def preco_base=(preco)
    @preco_base = preco if preco.is_a?(Numeric) && preco.positive?
  end

  def to_s
    "#{@nome} - R$ #{preco_final}"
  end
end

class DrinkLenda < Drink
  def initialize(nome, preco_base, anos_desde_criacao)
    super(nome, preco_base)
    @anos_desde_criacao = anos_desde_criacao
  end

  def preco_final
    @preco_base + (@anos_desde_criacao * 5)
  end

  def to_s
    "#{super} - #{@anos_desde_criacao} anos desde a criação"
  end
end

print "Nome do Drink: "
nome = gets.chomp

print "Preço base: "
preco = gets.chomp.to_f

print "Anos desde a criação: "
anos = gets.chomp.to_i

drink = DrinkLenda.new(nome, preco, anos)
puts drink.to_s
