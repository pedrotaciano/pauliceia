Given('the user is on the registration page') do
  visit '/register'
end

When('they enter valid registration details') do
  fill_in 'Nome', with: 'Test'
  fill_in 'E-mail', with: 'test@example.com'
  fill_in 'Nome de usuário', with: 'testUser1234'
  fill_in 'Senha', with: 'password123'
end

And('they agree with terms of use') do
  page.all('label[role=checkbox]')[1].click
end

And('they submit the registration form') do
  find('button[type="submit"]')
end

Then('they should not get errors') do
  if page.has_text?('Erro')
    raise "Page contains the unexpected message: #{'Erro'}"
  else
    puts "Error message not found"
  end
end

Given('the user is on the login page') do
  visit '/login'
end

When('they enter valid login credentials') do
  fill_in 'E-mail', with: 'lucascoutinho1312@gmail.com'
  fill_in 'Senha', with: 'lucascoutinho1312'
end

And('they submit the login form') do
  find('button[type="submit"]')
end

Then('they should be redirected to map') do
  expected_path = '/explore'
end
