RSpec.describe Exercism::Acronym do
  it "Convert a phrase 'Three Letter Acronyms' to acronym - TLA" do
    acronym = Exercism::Acronym.new('Three Letter Acronyms')
    expect(acronym.make_acronym).to eq('TLA')
  end

  it "Convert a phrase 'Portable Network Graphics' to acronym - PNG" do
    acronym = Exercism::Acronym.new('Portable Network Graphics')
    expect(acronym.make_acronym).to eq('PNG')
  end
end
