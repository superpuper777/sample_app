# == Schema Information
#
# Table name: users
#
#  id              :integer         not null, primary key
#  name            :string
#  email           :string
#  created_at      :datetime        not null
#  updated_at      :datetime        not null
#  password_digest :string
#  remember_token  :string
#  remember_digest :string
#

require 'rails_helper'

RSpec.describe User, type: :model do

  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                     password: "foobar", password_confirmation: "foobar")
  end
  subject { @user }

  it { should respond_to(:password_confirmation) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }

  describe "remember token" do
    before { @user.save }
    it { expect(@user.remember_token).not_to be_blank }
  end
end
