RSpec.describe Exercism::Isogram do
  it 'the phrase "six-year-old" is isogram' do
    isogram = Exercism::Isogram.new('six-year-old')
    expect(isogram.determine).to be true
  end

  it 'the word "lumberjacks" is isogram' do
    isogram = Exercism::Isogram.new('lumberjacks')
    expect(isogram.determine).to be true
  end

  it 'the phrase "I am seven year old" is not isogram' do
    isogram = Exercism::Isogram.new("I'm seven year old")
    expect(isogram.determine).to be false
  end
end
