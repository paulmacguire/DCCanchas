require 'rails_helper'

RSpec.feature "Usuarios", type: :feature do
  context 'create new usuario' do
    before(:each) do
      visit new_usuario_path
      within('form') do
        fill_in 'Nombre', with: 'Juan'
        fill_in 'Telefono', with: '123456789'
        fill_in 'Imagen perfil', with: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.elmundo.es%2Fdeportes%2Ffutbol%2Feurocopa%2F2021%2F06%2F24%2F60d4c142fdddff697b8b4630.html&psig=AOvVaw18YZsC49OoQYrlAJTDCAZ7&ust=1666384376116000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiDkNjT7_oCFQAAAAAdAAAAABAE'
        fill_in 'Password', with: '123456'
        fill_in 'Password confirmation', with: '123456'
        fill_in 'Tipo Usuario', with: 'Jugador'
      end
    end
    
    scenario 'should be successful' do
      click_button 'Create Usuario'
      expect(page).to have_content 'Usuario was successfully created.'
    
    end

    scenario 'should fail' do

      click_button 'Create Usuario'
      expect(page).to have_content 'Email can\'t be blank'
    end
  end

  context 'update usuario' do
    let!(:usuario) { Usuario.create(nombre: 'Juan', telefono: '123456789', imagen_perfil: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.elmundo.es%2Fdeportes%2Ffutbol%2Feurocopa%2F2021%2F06%2F24%2F60d4c142fdddff697b8b4630.html&psig=AOvVaw18YZsC49OoQYrlAJTDCAZ7&ust=1666384376116000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiDkNjT7_oCFQAAAAAdAAAAABAE', password: '123456', password_confirmation: '123456', tipo_usuario: 'Jugador') }
    before(:each) do
      visit edit_usuario_path(usuario)
    end

    scenario 'should be successful' do
      usuario = Usuario.create(nombre: 'Juan', telefono: '123456789', imagen_perfil: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.elmundo.es%2Fdeportes%2Ffutbol%2Feurocopa%2F2021%2F06%2F24%2F60d4c142fdddff697b8b4630.html&psig=AOvVaw18YZsC49OoQYrlAJTDCAZ7&ust=1666384376116000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiDkNjT7_oCFQAAAAAdAAAAABAE', password: '123456', password_confirmation: '123456', tipo_usuario: 'Jugador')
      visit edit_usuario_path(usuario)
      within('form') do
        fill_in 'Nombre', with: 'Juan'
        fill_in 'Telefono', with: '123456789'
        fill_in 'Imagen perfil', with: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.elmundo.es%2Fdeportes%2Ffutbol%2Feurocopa%2F2021%2F06%2F24%2F60d4c142fdddff697b8b4630.html&psig=AOvVaw18YZsC49OoQYrlAJTDCAZ7&ust=1666384376116000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiDkNjT7_oCFQAAAAAdAAAAABAE'
        fill_in 'Password', with: '123456'
        fill_in 'Password confirmation', with: '123456'
        fill_in 'Tipo Usuario', with: 'Jugador'
      end
      click_button 'Update Usuario'
      expect(page).to have_content 'Usuario was successfully updated.'
    end

    scenario 'should fail' do
      usuario = Usuario.create(nombre: 'Juan', telefono: '123456789', imagen_perfil: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.elmundo.es%2Fdeportes%2Ffutbol%2Feurocopa%2F2021%2F06%2F24%2F60d4c142fdddff697b8b4630.html&psig=AOvVaw18YZsC49OoQYrlAJTDCAZ7&ust=1666384376116000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiDkNjT7_oCFQAAAAAdAAAAABAE', password: '123456', password_confirmation: '123456', tipo_usuario: 'Jugador')
      visit edit_usuario_path(usuario)
      within('form') do
        fill_in 'Nombre', with: ''
      end
      click_button 'Update Usuario'
      expect(page).to have_content 'Nombre can\'t be blank'
    end
  end

  context 'destroy usuario' do
    scenario 'should be successful' do
      usuario = Usuario.create(nombre: 'Juan', telefono: '123456789', imagen_perfil: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.elmundo.es%2Fdeportes%2Ffutbol%2Feurocopa%2F2021%2F06%2F24%2F60d4c142fdddff697b8b4630.html&psig=AOvVaw18YZsC49OoQYrlAJTDCAZ7&ust=1666384376116000&source=images&cd=vfe&ved=0CA0QjRxqFwoTCNiDkNjT7_oCFQAAAAAdAAAAABAE', password: '123456', password_confirmation: '123456', tipo_usuario: 'Jugador')
      visit usuarios_path
      #click_link 'Destroy'
      accept_confirm do
        expect { click_link 'Destroy' }.to change(Usuario, :count).by(-1)
      end
      expect(page).to have_content 'Usuario was successfully destroyed.'
    end
  end
end