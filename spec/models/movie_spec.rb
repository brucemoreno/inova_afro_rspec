require 'rails_helper'

RSpec.describe Movie, :type => :model do
  subject {
    described_class.new(
      title: "Inception",
      year:  1990
      )
  }

  it "has a unique valid title" do

    expect(subject.title).to be_an(String)
    expect(subject.title).to be_truthy

  end

  it "has a valid launching year between 1900 and 2022" do

    expect(subject.year).to be_an(Integer)
    expect(subject.year).to be_between(1900, 2022)
    expect(subject.year).to be_truthy
  end
end



