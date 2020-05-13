RSpec.describe Exercism::Series do
  it "'491', '914', '142' are substrings with 3 digits from '49142' " do
    series = Exercism::Series.new('49142', 3)
    expect(series.series).to eq(['491', '914', '142'])
  end

  it "'4914', '9142', are substrings with 4 digits from '49142' " do
    series = Exercism::Series.new('49142', 4)
    expect(series.series).to eq(['4914', '9142'])
  end
end
