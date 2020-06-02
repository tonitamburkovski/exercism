RSpec.describe Exercism::Luhn do
  it '9 is not valid number per the Luhn formula' do
    luhn = Exercism::Luhn.new('9')
    expect(luhn.simple_check).to be false
  end

  it '4539 1488 0343 6467 is valid number per the Luhn formula' do
    luhn = Exercism::Luhn.new('4539 1488 0343 6467')
    expect(luhn.simple_check).to be true
  end

  it '8273 1232 7352 0569 is not valid number per the Luhn formula' do
    luhn = Exercism::Luhn.new('8273 1232 7352 0569')
    expect(luhn.simple_check).to be false
  end
end
