require 'spec_helper'

describe Aristocrat do

  it {should validate_presence_of (:first_name)}

  it {should validate_presence_of (:surname)}

  it { should_not allow_value("google.com").for(:email) }
  it { should allow_value("zahid@theoriginalstarwarstrilogy.com").for(:email) }
  it {should ensure_length_of(:first_name).is_at_least(10)}
  it {should ensure_length_of(:surname).is_at_least(10)}
  it { should_not allow_value("Oppenheimer").for(:email) }
  it { should allow_value("Brixton-Lowborn").for(:email) }



end
