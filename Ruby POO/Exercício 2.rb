class Musico
  attr_accessor :nome, :instrumento
  
  def initialize(nome, instrumento)
    @nome = nome
    @instrumento = instrumento
  end

  def tocar_partitura(_peca)
    puts "#{@nome} está tocando com o #{@instrumento}"
    raise NotImplementedError "#{tocar_partitura} deve ser implementado"
  end
end

class Violonista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} está tocando #{peca} com o violino"
  end
end

class Pianista < Musico
  def tocar_partitura(peca)
    puts "#{@nome} está tocando #{peca} com o piano"
  end
end

class Maestro
  def initialize(musicos)
    @musicos = musicos
  end
  
  def iniciar_ensaio(peca)
    puts "O ensaio para #{peca} começou!"
    @musicos.each do |musico|
      musico.tocar_partitura(peca)
    end
  end
  
  def mudar_foco(estado)
    mensagens = @musicos.map do |m|
      "#{m.nome} agora está #{estado}!"
    end
    mensagens.each { |msg| puts msg }
  end
end

musicos = [
  Violonista.new("Beethoven", "violino")
  Pianista.new("Mozart", "piano"),
]

maestro = Maestro.new(musicos)

print "Digite o nome da peca: "
peca = gets.chomp

maestro.mudar_foco("inspirado")
maestro.iniciar_ensaio(peca)

