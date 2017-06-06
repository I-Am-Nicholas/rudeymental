require 'rails_helper'

feature 'homepage' do


  context 'Basic Display' do

    scenario 'displays specific rudeness' do
      visit '/'
      find('#PG13').click
      find('#submit').click
      expect(page).to have_css('div.response')
    end

    scenario 'displays rudeness even without selected rating' do
      visit '/'
      click_button 'Get Rude!'
      expect(current_path).to eq '/cusswords/show'
    end

  end


  context 'Rating' do

    scenario 'displays a ratings selector' do
      visit '/'
      expect(page).to have_content('Mildly Irritated')
      expect(page).to have_content('PG 13')
      expect(page).to have_content('Positively Livid')
    end

    scenario 'notifies of a primary level of rudeness' do
      visit '/'
      find('#PG13').click
      find('#submit').click
      expect(page).to have_content('Rude Ranking: Level 1')
    end

    scenario 'notifies of a secondary level of rudeness' do
      visit '/'
      find('#Mildly-Irritated').click
      find('#submit').click
      expect(page).to have_content('Rude Ranking: Level 2')
    end

    scenario 'notifies of a tertiary level of rudeness' do
      visit '/'
      find('#Positively-Livid').click
      find('#submit').click
      expect(page).to have_content('Rude Ranking: Level 3')
    end

  end

end
