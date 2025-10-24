class MicroondasUnidade
  def aquecer_por(tempo)
    puts "Aquecendo por #{tempo} segundos"
  end
end

class DMail
  attr_accessor :conteudo, :hora_envio

  def initialize(conteudo, hora_envio)
    @conteudo = conteudo
    @hora_envio = hora_envio
  end

  def to_s
    "Conteúdo: #{@conteudo}, Hora de envio: #{@hora_envio}"
  end
end

class TelefoneDeMicroondas
  def initialize
    @microondas = MicroondasUnidade.new
    @dmails = []
  end

  def enviar_dmail
    print "Digite o conteúdo do DMail: "
    conteudo = gets.chomp
    print "Digite a hora de envio (HH:MM): "
    hora_envio = gets.chomp

    @microondas.aquecer_por(30)
    novo_dmail = DMail.new(conteudo, hora_envio)
    @dmails << novo_dmail

    puts "DMail enviado com sucesso!!!"
  end

  def listar_dmails(horario_corte)
    puts "\nD-Mails enviados após #{horario_corte}:"
      recentes = @dmails.select { |d| d.hora_envio > horario_corte }
      if recentes.empty?
        puts "Nenhum D-Mail encontrado após esse horário."
      else
        recentes.each { |d| puts d.to_s }
      end
  end
end

telefone = TelefoneDeMicroondas.new

loop do
  puts "\n--- MENU D-MAIL ---"
  puts "1. Enviar D-Mail"
  puts "2. Listar D-Mails após um horário"
  puts "3. Sair"
  
  print "Escolha uma opção: "
  opcao = gets.chomp.to_i

  case opcao
  when 1
    telefone.enviar_dmail
  when 2
    print "Digite o horário de corte (HH:MM): "
    corte = gets.chomp
    telefone.listar_dmails(corte)
  when 3
    puts "Encerrando programa..."
    break
  else
    puts "Opção inválida!"
  end
end
