RSpec.describe Exercism::WordCount do
  it "counts words of the input 'olly olly in come free'" do
    phrase = Exercism::WordCount.new("olly olly in come free")
    expect(phrase.word_count).to eq({ "olly"=>2, "in"=>1, "come"=>1, "free"=>1 })
  end

  it "counts words of the input 'one two two three three three'" do
    phrase = Exercism::WordCount.new("one two two three three three")
    expect(phrase.word_count).to eq({"one"=>1, "two"=>2, "three"=>3,})
  end
end
