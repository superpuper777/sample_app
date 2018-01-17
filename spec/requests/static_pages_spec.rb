require 'spec_helper'

RSpec.describe "StaticPages", type: :request do
  describe "Home page" do
    it "should have the content 'Sample2 App" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample2 App')
    end
  end
end
