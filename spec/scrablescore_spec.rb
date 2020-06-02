RSpec.describe Exercism::ScrableScore do
  it 'scrabble score for the word "cabbage" is 14' do
    scrable_score = Exercism::ScrableScore.new('cabbage')
    expect(scrable_score.score).to eq(14)
  end

  it 'scrable score for the word "oxyphenbutazone" is 41' do
    scrable_score = Exercism::ScrableScore.new('oxyphenbutazone')
    expect(scrable_score.score).to eq(41)
  end

  it 'scrable score for the word "squeezy" is 28' do
    scrable_score = Exercism::ScrableScore.new('squeezy')
    expect(scrable_score.score).to eq(28)
  end
end
