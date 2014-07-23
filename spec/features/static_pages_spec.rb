require 'spec_helper'


describe "static pages" do
	
	subject {page}

	describe "home page" do
		before {visit '/static_pages/home'}
		it {should have_content("Sample App")}	
		it {should have_title("Sample App")}		
	end

	describe "contact" do 
		before {visit '/static_pages/contact'}
		it {should have_title("Contact us")}	
	end

	describe "about" do 
		before {visit '/static_pages/about'}
		it {should have_content("About")}
		it {should have_title("About us")}
	end

	describe "help" do 
		before {visit '/static_pages/help'}
		it {should have_content("help")}
		it {should have_title("Help")}
	end
end