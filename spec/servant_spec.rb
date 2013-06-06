require 'spec_helper'


describe Servant do

  context 'given the creation of a servant' do

  let(:servant) {Servant.create(:last_name => "Jones", :occupation => "Butler", :age => "22", :nickname => "Jonesy")}

  it {should validate_presence_of (:last_name)}

  it { should_not allow_value("Landlord").for(:occupation) }

  it { should allow_value("Butler").for(:occupation) }

  it {should ensure_length_of(:nickname).is_at_most(6)}

  it 'has a nickname which is the first letter of the last name' do
    s = Servant.create(:last_name => "Baratheon", :occupation => "Butler", :age => 25, :nickname => "Jones")
    s.nickname.should eq "B"
      end

  end

  end
