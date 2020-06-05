RSpec.describe Exercism::Hamming do
  it "The Hamming distance between 'GAGCCTACTAACGGGAT' and 'CATCGTAATGACGGCCT'
    DNA strands is 7." do
    hamming = Exercism::Hamming.new('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT')
    expect(hamming.check_dna).to eq(7)
  end

  it "sequences 'GAGCCTACTAACGGGAT' and 'CATCGTAATGACGGCC' haven't equal length" do
    hamming = Exercism::Hamming.new('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCC')
    expect(hamming.check_dna).to eq("sequences haven't equal length")
  end
end
