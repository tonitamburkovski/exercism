RSpec.describe Exercism::Raindrops do
  it '28 is Plong' do
    raindrops = Exercism::Raindrops.new(28)
    expect(raindrops.check_number).to eq('Plong')
  end

  it '30 is PlingPlang' do
    raindrops = Exercism::Raindrops.new(30)
    expect(raindrops.check_number).to eq('PlingPlang')
  end

  it '21 is PlingPlong' do
    raindrops = Exercism::Raindrops.new(21)
    expect(raindrops.check_number).to eq('PlingPlong')
  end

  it '35 is PlangPlong' do
    raindrops = Exercism::Raindrops.new(35)
    expect(raindrops.check_number).to eq('PlangPlong')
  end

  it '34 is 34' do
    raindrops = Exercism::Raindrops.new(34)
    expect(raindrops.check_number).to eq('34')
  end

  it '105 is PlingPlangPlong' do
    raindrops = Exercism::Raindrops.new(105)
    expect(raindrops.check_number).to eq('PlingPlangPlong')
  end
end
