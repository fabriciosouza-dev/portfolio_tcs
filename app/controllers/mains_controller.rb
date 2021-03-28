class MainsController < ApplicationController
  def index
    @lista_contato = [
      { celular: '(62) 99467-0169', email: 'anprofelipe@gmail.com' },
      { celular: '(62) 98222-6325', email: 'fabricioeliasdesouza@gmail.com' },
      { celular: '(62) 99205-7608', email: 'oliveira.leonam@hotmail.com' },
    ]
    @Lista_imagens = [
      { chave: :projeto_2, img: '1.jpg', titulo: 'PROJETO 2', descricao: 'Orientação a Objetos: problema da vida real' },
      { chave: :projeto_3, img: '2.jpg', titulo: 'PROJETO 3', descricao: 'Chatbot com Prolog e AIML' },
      { chave: :projeto_4, img: '3.jpg', titulo: 'PROJETO 4', descricao: 'Ciências de Dados com Python' },
    ]

    @lista_membros = [
      {
        nome: 'André Felipe',
        especialidade: 'Desenvolvedor Flutter Mobile',
        social_medias: [
          { link: 'https://www.linkedin.com/in/andre-mobile-developer/', icon: 'linkedin-in' },
          { link: 'https://github.com/AndreDrummer', icon: 'github' },
        ],
        foto: 'team/andre_felipe.jpg'
      },
      {
        nome: 'Fabricio Elias',
        especialidade: 'Desenvolvedor Web',
        social_medias: [
          { link: 'https://www.linkedin.com/in/fabricioeliasdesouza/', icon: 'linkedin-in' },
          { link: 'https://github.com/fabriciosouza-dev', icon: 'github' },
        ],
        foto: 'team/fabricio.jpg'
      },
      {
        nome: 'Leonam Oliveira',
        especialidade: 'Desenvolvedor Backend',
        social_medias: [
          { link: 'https://www.linkedin.com/in/leonam-oliveira/', icon: 'linkedin-in' },
          { link: 'https://github.com/LeonamOliveira', icon: 'github' },
        ],
        foto: 'team/leonam.jpg'
      },
    ]
  end

  def contact
    email = params[:email]
    nome = params[:nome]
    telefone = params[:telefone]
    mensagem = params[:mensagem]
    MainMailer.contact_email(email: email,
                             nome: nome,
                             telefone: telefone,
                             mensagem: mensagem).deliver_now

    redirect_to root_path
  end
end
