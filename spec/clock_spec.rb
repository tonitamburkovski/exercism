RSpec.describe Exercism::Clock do
  it 'if you subtract 25 minutes from 12:20 you get 11:55' do
    clock = Exercism::Clock.new('12:20', '-25')
    expect(clock.new_time).to eq('11:55')
  end

  it 'if you subtract 50 minutes from 10:25 you get 09:35' do
    clock = Exercism::Clock.new('10:25', '-50')
    expect(clock.new_time).to eq('09:35')
  end

  it 'if you add 29 minutes to 23:40 you get 00:09' do
    clock = Exercism::Clock.new('23:40', '29')
    expect(clock.new_time).to eq('00:09')
  end

  it 'if you subtract 40 minutes from 00:27 you get 23:47' do
    clock = Exercism::Clock.new('00:27', '-40')
    expect(clock.new_time).to eq('23:47')
  end
end
