require_relative '../src/decoratorPattern'

describe 'Decorator Pattern' do

  it 'original boy friend say hello' do
    boyFriend = BoyFriend.new
    expect(boyFriend.sayHello).to eq('I am a wonderful boy friend!')
  end

  it 'boy friend decorated with house' do
    boyFriendWithHouse = BoyFriendWithHouse.new(BoyFriend.new)
    expect(boyFriendWithHouse.sayHello).to eq('I am a wonderful boy friend! I have a large House!')
  end

end