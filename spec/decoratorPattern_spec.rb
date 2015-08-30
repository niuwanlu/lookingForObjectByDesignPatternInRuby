require_relative '../src/decoratorPattern'

describe 'Decorator Pattern' do

  it 'boy friend say hello' do
    boyFriend = BoyFriend.new
    expect(boyFriend.sayHello).to eq('I am a wonderful boy friend!')
  end

end