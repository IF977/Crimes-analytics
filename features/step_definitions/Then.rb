#I should see the text Conteudo can't be blank

Then(/^I should see ([^"]*)$/) do |text|
  expect(page).to have_content(text)
end