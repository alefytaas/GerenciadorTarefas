class Tarefas
    attr_writer :status
    attr_reader :status
  def initialize(titulo,descricao, status)
    @titulo = titulo
    @descricao = descricao
    @status = status    
  end

  def to_s
    "Tarefa: #{@titulo}, Descricão: #{@descricao}, Status: #{@status}"

  end

  
  
end
