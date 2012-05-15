require 'spec_helper'

describe "Static pages" do

  subject { page }
  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1', text: 'Sample App') }
    it { should have_selector('title', text: full_title('')) }
    it { should_not have_selector('title', text: '| Home') }
  end

   describe "Help page" do
    before { visit help_path }

    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: full_title('Help')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1', text: 'About Us') }
    it { should have_selector('title', text: full_title('About Us'))}
  end

  describe "Contact page" do
    before { visit contact_path }

    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: "Ruby on Rails Tutorial Sample App | Contact") }
  end

  describe "Site Map page" do
    before { visit site_map_path }

    it { should have_selector('title', text: full_title('Site Map')) }
  end

  describe "Parts page" do
    before { visit parts_path }

    it { should have_selector('h1', text: "This is the parts page") }
  end

end
