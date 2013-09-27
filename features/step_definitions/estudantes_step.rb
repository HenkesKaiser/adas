Dado(/^que exista um estudade com nome "(.*?)" e idade "(.*?)"$/) do |nome, idade|
  idade = idade.to_i
  @estudante = Estudante.create(nome: nome, idade: idade)
  @estudante.nome.should eq(nome)
  @estudante.idade.should eq(idade)
end

Quando(/^quando eu visitar a página do estudade$/) do
  visit ("/estudantes/#{@estudante.id}")
end

Então(/^devo ver "(.*?)"$/) do |valor|
  page.should have_content(valor)
end

Quando(/^eu for para a página de cadastro de um novo estudante$/) do
  visit ("/estudantes/new")
end

Quando(/^preencher o nome "(.*?)" e a idade "(.*?)"$/) do |nome, idade|
  fill_in("estudante_nome", :with => nome)
  fill_in("estudante_idade", :with => idade)
end

Quando(/^clicar no botão salvar$/) do
  click_button("salvar")
end
Então(/^eu devo ver uma mensagem "(.*?)"$/) do |valor|
  page.should have_content(valor)
end

Quando(/^preencher a idade "(.*?)"$/) do |idade|
    fill_in("estudante_idade", :with => idade)
end