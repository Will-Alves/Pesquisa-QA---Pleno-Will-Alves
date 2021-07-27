Dado("que eu acesse a página da VV Test") do
  teste_via
end

Dado("acesse o menu Pesquisa - QA") do
  botao_pesquisa_qa
end

Quando("eu preencher todos os campos obrigatórios") do
  preencher_campos
end

Então("deve ser direcionado para uma página de sucesso") do
  alert = find(".nf-response-msg")
  expect(alert.text).to eql "Your form has been successfully submitted."
end
