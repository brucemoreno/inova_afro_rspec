require 'rails_helper'

RSpec.describe Comment, type: :model do
  subject{
    described_class.new(
      body: "Exemplo de comentário crítico",
      approved: false

    )
  }
it "is not a nill value" do

  expect(subject.body).to be_truthy
end

it 'is not approved by default' do
expect(subject.approved).to be_falsey
end

it 'has a text in the body area' do
  expect(subject.body).not_to be_empty
end
end