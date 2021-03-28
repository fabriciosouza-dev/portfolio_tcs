class ProjectsController < ApplicationController
  def index
    @projeto = params[:chave]

    @Lista_imagens = [
      { chave: :projeto_2, img: '1.jpg', titulo: 'PROJETO 2', descricao: 'Orientação a Objetos: problema da vida real' },
      { chave: :projeto_3, img: '2.jpg', titulo: 'PROJETO 3', descricao: 'Chatbot com Prolog e AIML' },
      { chave: :projeto_4, img: '3.jpg', titulo: 'PROJETO 4', descricao: 'Ciências de Dados com Python' },
    ]
    @Lista_imagens.delete_if {|x| x[:chave].to_sym == @projeto.to_sym}
  end
end
