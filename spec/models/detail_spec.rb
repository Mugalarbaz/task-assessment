require 'rails_helper'

RSpec.describe Detail, type: :model do
  it 'is valid with valid attributes' do
    person = Person.create(name: 'John', email: 'john@example.com')
    detail = person.details.new(content: 'Some detail')
    expect(detail).to be_valid
  end

  it 'is not valid without content' do
    person = Person.create(name: 'John', email: 'john@example.com')
    detail = person.details.new
    expect(detail).not_to be_valid
  end

  it 'belongs to a person' do
    person = Person.create(name: 'John', email: 'john@example.com')
    detail = person.details.create(content: 'Some detail')
    expect(detail.person).to eq(person)
  end
end
