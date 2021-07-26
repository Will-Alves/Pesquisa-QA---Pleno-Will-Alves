Dado("que eu acesse a página da VV Test") do
  visit "/"
end

Dado("acesse o menu Pesquisa - QA") do
  click_on "Pesquisa – QA"
end

Quando("eu preencher todos os campos obrigatórios") do
  find("#nf-field-5").set "William"
  find("#nf-field-6").set "Enedino Barbosa Alves de Souza"
  find("#nf-field-7").set "willbarbosasouza@yahoo.com"
  find("#nf-field-8").set "willbarbosasouza@yahoo.com"
  find("#nf-label-class-field-10-1").click
  select "Menos de 5 anos", from: "nf-field-11"
  select "Desafio", from: "nf-field-12"
  find("#nf-label-class-field-13-0").click
  find("#nf-field-14").set "Ruby"
  find("#nf-field-15").set "Eu quero me tornar um profissional cada vez melhor, dentro daquilo que seja colocado como desafios na minha carreira, será uma grande oportunidade entrar na Via Varejo, e irei agarrar esse desafio que tanto busco como objetivo na área de QA."
  click_on "Enviar"
  sleep 5
end

Então("deve ser direcionado para uma página de sucesso") do
  alert = find(".nf-response-msg")
  expect(alert.text).to eql "Your form has been successfully submitted."
end
