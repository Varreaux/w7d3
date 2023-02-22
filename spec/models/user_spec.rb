require 'rails_helper'
  #F = self.find_by_credentials(username, password)
  #I = is_password?(password)
  #G = generate_session_token
  #V = validations
  #A = attr_reader (password)
  #P = password=(password)
  #E = ensure_session_token
  #R = reset_session_token


RSpec.describe User, type: :model do


  it { should validate_presence_of(:username)}
  it { should validate_presence_of(:password_digest)}
  it { should validate_presence_of(:session_token)}
  it { should validate_length_of(:password).is_at_least(6)}

  subject(:sam) {User.new( username: 'sam',
  password_digest: 'awoihoihf0192u4029u4211!fjpawjf312501',
  session_token: '10924019571jfowihfoy2102uy09u3f80280')}

  it { should validate_uniqueness_of(:username)}
  it { should validate_uniqueness_of(:session_token)}

    describe 'password' do
      it 'has an instance variable of password'

    end

    describe 'password=(password)' do
      
    end

  # describe '::find_by_credentials' do
  #   it 'finds a user by their username and password' do
      
  #   end

end
