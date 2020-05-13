RSpec.describe Exercism::HighScore do
  it 'the highest score from the list [3, 10, 2, 7] is 10, last added is 7 and three highest scores are [10, 7, 3]' do
    high_score = Exercism::HighScore.new([3, 10, 2, 7])
    expect(high_score.high_score).to eq(10)
    expect(high_score.last_added).to eq(7)
    expect(high_score.three_highest_scores).to eq([10, 7, 3])
  end

  it 'the highest score from the list [16, 10, 101, 90] is 101, last added is 90 and three highest scores are [101, 90, 16]' do
    high_score = Exercism::HighScore.new([16, 10, 101, 90])
    expect(high_score.high_score).to eq(101)
    expect(high_score.last_added).to eq(90)
    expect(high_score.three_highest_scores).to eq([101, 90, 16])
  end
end
