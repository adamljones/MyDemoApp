require 'spec_helper'

describe "Static pages" do

  subject { page }

  shared_examples_for "all static pages" do
    it { should have_selector('h1', text: heading) }
    it { should have_title(full_title(page_title)) }
  end

  describe "Home page" do
    before { visit root_path }
    setup_heading_and_title('Sample App', '')

    it_should_behave_like "all static pages"
    it { should_not have_title('| Home') }
  end

  describe "Help page" do
    before { visit help_path }
    setup_heading_and_title('Help', 'Help')
  end

  describe "About page" do
    before { visit about_path }
    setup_heading_and_title('About', 'About Us')
  end

  describe "Contact page" do
    before { visit contact_path }
    setup_heading_and_title('Contact Us', 'Contact Us')
  end

  it "should have the right links on the layout" do
    visit root_path
    first(:link, "About").click
    expect(page).to have_title(full_title('About Us'))
    click_link "Help"
    expect(page).to have_title(full_title('Help'))
    click_link "Contact"
    expect(page).to  have_title(full_title('Contact Us'))
    click_link "Home"
    click_link "Sign up now!"
    expect(page).to  have_title(full_title('Sign up'))
  end
end