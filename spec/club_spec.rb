require 'spec_helper'


describe Club do

  it 'has a name' do
    c = Club.create(:name => "Bilderberg")
    c.name.should eq "Bilderberg"
  end

end