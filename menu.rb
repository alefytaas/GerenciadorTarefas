require_relative 'tarefas.rb'
tarefas = []
def imprimir_tarefas(tarefas)

    n = 1
    puts "Tarefas cadastradas: "
    for tarefa in tarefas
      puts "\n "+n.to_s + " - " + tarefa.to_s
      n += 1
    end
  end

def imprimir_tarefas_concluidas(tarefas)
    n = 1
    for tarefa in tarefas
        if tarefa.status == "concluída"
        puts "\n "+n.to_s + " - " + tarefa.to_s
        end
        n += 1
        end
    end
def imprimir_tarefas_pendentes(tarefas)
    n = 1
    for tarefa in tarefas
        if tarefa.status == "pendente"
        puts "\n "+n.to_s + " - " + tarefa.to_s
        end
        n += 1
        end
        end
def excluir_tarefas(tarefas, opcao)
    tarefas.delete_at(opcao - 1)
    imprimir_tarefas(tarefas)
    end
  while true
puts "menu"
puts "1 - adicionar tarefa"
puts "2 - mostrar tarefas"
puts "3 - marcar tarefa como concluídas"
puts "4 - excluir tarefa"

puts "digite sua opção: "
opcao = gets.chomp.to_i

case opcao
    when 1
        puts "Qual titulo da tarefa: "
        titulo = gets.chomp
        puts "Qual a descrição da tarefa: "
        descrição = gets.chomp
        puts "Qual o status da tarefa: 1 - pendente, 2 - concluída"
        status = gets.to_i
        case status
        when 1
        tarefas << Tarefas.new(titulo, descrição, "pendente")
        when 2
        tarefas << Tarefas.new(titulo, descrição, "concluída")
        end
    when 2
        imprimir_tarefas(tarefas)
    when 3
        imprimir_tarefas_pendentes(tarefas)

        puts "Digite a tarefa que deseja marcar como concluída: "
        tarefa = gets.to_i
        tarefas[tarefa - 1].status = "concluída"
    when 4
        imprimir_tarefas(tarefas)
        puts "digite a tarefa que deseja excluir: "
        opcao = gets.to_i
        excluir_tarefas(tarefas, opcao)

    
end
end

