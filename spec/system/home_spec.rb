require 'system_helper'

RSpec.describe 'home', type: :system do

  before do
    visit root_path
  end


  it 'works' do
    within('.navbar') do
    click_on "Scheduled Tweets"
   expect(current_path).to eq(root_path)
    end
  end

  it 'works' do
    within('.navbar') do
        click_on "About"
        expect(current_path).to eq(about_path)
    end
  end

  it 'works' do
    within('.navbar') do
    click_on "Sign Up"
    expect(current_path).to eq(sign_up_path)
    end
  end

  it 'works' do
    within('.navbar') do
    click_on "Login"
    expect(current_path).to eq(sign_in_path)
  end
end

  it 'works' do
      click_on "Login"
      click_on "Forgot your password?"
      expect(current_path).to eq(password_reset_path)
    end

  it 'works' do
    expect(page).to have_selector('h1', text: 'Welcome to Scheduled Tweets')
  end

  it 'works' do
    within('.navbar') do
        expect(page).to have_css('a', text: 'Tweets')
        expect(page).to have_css('a', text: 'Twitter Accounts')
      end
   end

end
