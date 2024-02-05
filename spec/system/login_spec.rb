require 'system_helper'

RSpec.describe 'sign_in', type: :system do

 User.create(email: 'capybara@mail.com', password: '123')

  before do
    visit '/sign_in'
  end

  it 'works' do
        fill_in 'Email', with: 'capybara@mail.com'
        fill_in 'Password', with: '123'
        click_on "Sign In"

        expect(page).to have_content "Logged in successfully"
        expect(current_path).to eq('/')
  end
end
