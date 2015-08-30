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

  it 'boy friend decorated with car' do
    boyFriendWithCar = BoyFriendWithCar.new(BoyFriend.new)
    expect(boyFriendWithCar.sayHello).to eq('I am a wonderful boy friend! I have a luxury Car!')
  end

  it 'boy friend decorated with house and car' do
    boyFriendWithHouseAndCar = BoyFriendWithCar.new(BoyFriendWithHouse.new(BoyFriend.new))
    expect(boyFriendWithHouseAndCar.sayHello).to eq('I am a wonderful boy friend! I have a large House! I have a luxury Car!')
  end

end