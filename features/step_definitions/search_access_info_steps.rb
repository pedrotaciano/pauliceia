require_relative 'common_steps'

When('they enter a specific address in the search bar') do
  fill_in 'nome da rua, número, ano', with: 'rua da consolaçao, 42, 1931'
end

And('they submit the search') do
  click_button 'Pesquisar'
end

Then('they should zoom to interet points in the map') do
  # this element represents the zoom in the inferior left corner of the map
  if page.has_text?('Encontrado')
    puts "Page contains the expected message: #{'Encontrado'}"
  else
    raise "Expected message not found: #{'Encontrado'}"
  end
end