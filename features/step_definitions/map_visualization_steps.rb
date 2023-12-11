require_relative 'common_steps'

When('they open the layer modal') do
  find('.btn_sidebar').click
  find('button[data-target="#modalAddLayer"]').click
end

And('they apply layers to the map') do
  find('.el-button--success', match: :first).click
end

And('they close the modal') do
  find('.close').click
end

Then('the layer should display according to the specified filters and settings') do
  # this element represents a layer on the sidebar
  if page.has_css?('.move-icon', visible: true)
    puts 'Layer is displayed according to the specified filters and settings.'
  else
    raise 'Layer is not displayed according to the specified filters and settings.'
  end
end
