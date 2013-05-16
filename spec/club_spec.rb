describe Club do

  it 'has a name' do
    c = Club.new(Bilderberg)
    c.name.should eq Bilderberg
  end

end