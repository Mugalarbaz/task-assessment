require 'rails_helper'

RSpec.describe Person, type: :model do
  it 'is valid with valid attributes' do
    person = Person.new(name: 'John', email: 'john@example.com')
    expect(person).to be_valid
  end

  it 'is not valid without a name' do
    person = Person.new(email: 'john@example.com')
    expect(person).not_to be_valid
  end

  it 'is not valid without an email' do
    person = Person.new(name: 'John')
    expect(person).not_to be_valid
  end

  it 'can have details' do
    person = Person.create(name: 'John', email: 'john@example.com')
    detail = person.details.create(content: 'Some detail')
    expect(person.details).to include(detail)
  end
end
