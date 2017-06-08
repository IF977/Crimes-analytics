When(/^[I ]*click on the Sobre button$/) do |button|
  click_on(sobre)
end

When(/^I visit ([^"]*) link$/) do |link|
  visit(link)
end

When(/^[I ]*fill ([^"]*) input with ([^"]*)$/) do |input, data|
  fill_in(input, :with => data)
end

# I click on the submit button

When(/^[I ]*click on the enviar button$/) do |button|
  click_on('Enviar')
end