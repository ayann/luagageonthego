require 'rails_helper'

RSpec.describe SettingsController, :type => :controller do

  describe "GET change_locale" do
    it "returns http success" do
      get :change_locale
      expect(response).to be_success
    end
  end

end
