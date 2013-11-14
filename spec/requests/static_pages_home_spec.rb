require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "home page" do
    before { visit home_path }

    it { should have_content('Pinboard') }
    it { should have_link('SignUp', href: signup_path) }
    it { should have_link('SignIn', href: signin_path) }
  end


end