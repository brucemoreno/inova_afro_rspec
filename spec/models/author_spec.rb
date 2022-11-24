require 'rails_helper'

RSpec.describe Author, type: :model do
  subject{
    described_class.new(
      name: "Leonardo di Caprio",
      year: 1970,
      email: "dicaprio@dicaprio.com")
  }
  it "name is not nil" do
    expect(subject.name).to be_truthy
    expect(subject.name).to be_a_kind_of(String)
  end

  it "has a valid birthday" do
    expect(subject.year).to be_between(1930, 2022)
    expect(subject.year).to be_truthy
    expect(subject.year).to be_a_kind_of(Integer)
  end

 it "has a valid e-mail addres" do
  expect(subject.email).to be_truthy
  expect(subject.email).to include("@")
  expect(subject.email).to include(".com") | include(".net") | include(".org") | include(".ed")
  
  

  end
end
