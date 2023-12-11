require_relative 'common_steps'

When('they click on upload button') do
  find('.input-group-append button[type="button"]').click
end

And('they upload a valid data file') do
  find('input[type="file"]').set('../pauliceia/features/support/test.csv')
end

And('they set and search the addresses') do
  find('input[placeholder="Coluna Rua"]').set('rua')
  find('input[placeholder="Coluna Número"]').set('nro')
  find('input[placeholder="Coluna Ano"]').set('ano')
  click_button 'Visualizar'
end

Then('they should not get an error') do
  if page.has_text?('Erro')
    raise "Page contains the unexpected message: #{'Erro'}"
  else
    puts "Successfull search"
  end
end
