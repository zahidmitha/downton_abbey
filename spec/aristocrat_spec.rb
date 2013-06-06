require 'spec_helper'

describe Aristocrat do

  let(:aristocrat) {Aristocrat.create(:first_name => "Zahid",:surname => "Remmington-Shore", :email => "tom@thejones.com")}

  it 'validates presence of first_name' do
    a = Aristocrat.create(:first_name => "Zahid",:surname => "Remmington-Shore", :email => "tom@thejones.com")
    a.should validate_presence_of (:first_name)
  end

   it 'validates presence of surname' do
    a = Aristocrat.create(:first_name => "Zahid",:surname => "Remmington-Shore", :email => "tom@thejones.com")
    a.should validate_presence_of (:surname)
  end

  it 'validates presence of surname' do
    a = Aristocrat.create(:first_name => "Zahid",:surname => "Remmington-Shore", :email => "tom@thejones.com")
    a.should validate_presence_of (:surname)
  end

  it { should_not allow_value("google.com").for(:email) }

  it { should allow_value("zahid@theoriginalstarwarstrilogy.com").for(:email) }

  it { should_not allow_value("Oppenheimer").for(:email) }

  it { should_not allow_value("Brixton-Lowborn").for(:email) }

  it 'gets a servant of the chosen age' do
     a = Aristocrat.create(:first_name => "Zahid",:surname => "Remmington-Shore", :email => "tom@thejones.com")
     s1 = Servant.create(:last_name => "Jones", :occupation => "Butler", :age => "22", :nickname => "Jonesy")
     a.servants_over(18).should eq 1

  end

  it 'gets secret societies' do
    a = Aristocrat.create(:first_name => "Zahid",:surname => "Remmington-Shore", :email => "tom@thejones.com")
    c1 = Club.create(:name => "Illuminati")
    c2 = Club.create(:name => "Freemasons")
    a.secret_societies
    a.clubs.should eq


  end


end
