require 'rails_helper'

feature 'Usuario acessa home' do
    scenario 'com sucesso'do 
        visit books_path

        expect(page).to have_content('Bem vindo')         
   end
end    
