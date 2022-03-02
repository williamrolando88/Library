require_relative '../classes/person'

describe '.Person' do
  context 'It should create a Person object given the valid inputs' do
    it 'Should create a person with age = 10' do
      person = Person.new(10)
      expect(person.age).to eql(10)
    end
    it 'Should create a person with age = 10 and called Carlos' do
      person = Person.new(10, 'carlos')
      expect(person.age).to eql(10)
      expect(person.name).to match('Carlos')
    end
    it 'Should create a person with age = 10 and name = Abcde01234' do
      person = Person.new(10, 'abcde0123456789')
      expect(person.age).to eql(10)
      expect(person.name).to match('Abcde01234')
    end
  end
end
