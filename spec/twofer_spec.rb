RSpec.describe Exercism::TwoFer do
  it 'check the name Toni' do
    two_fer = Exercism::TwoFer.new('Toni')
    expect(two_fer.check_sentance).to eq('One for Toni, one for me.')
  end

  it 'check if the name is empty' do
    two_fer = Exercism::TwoFer.new('')
    expect(two_fer.check_sentance).to eq('One for you, one for me.')
  end

  it 'check the name Elena' do
    two_fer = Exercism::TwoFer.new('Elena')
    expect(two_fer.check_sentance).to eq('One for Elena, one for me.')
  end
end
