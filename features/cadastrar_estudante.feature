# language: pt
Funcionalidade: Cadastrar um estudade
  Para cadastrar um estudante
  Eu como admin
  Devo preencher um formulário
  
  Cenário: Cadastramento com sucesso
  
  Quando eu for para a página de cadastro de um novo estudante
  E preencher o telefone "Rodrigo" e a idade "18"
  E clicar no botão salvar
  Então eu devo ver uma mensagem "Estudante cadastrado com sucesso"
  
  
  Cenário: Cadastramento sem o nome preechido
  
  Quando eu for para a página de cadastro de um novo estudante
  E preencher a idade "18"
  E clicar no botão salvar
  Então eu devo ver uma mensagem "Você deve informar o nome"