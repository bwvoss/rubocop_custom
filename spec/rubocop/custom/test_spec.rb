describe RuboCop::Cop::Custom::Test do
  subject(:cop) { described_class.new }

  it 'finds methods named test' do
    inspect_source(cop, 'def test;end')
    expect(cop.messages)
      .to eq(['Do not use test as a method name'])
    expect(cop.highlights).to eq(['def test;end'])
    expect(cop.offenses.map(&:line).sort).to eq([1])
  end
end
