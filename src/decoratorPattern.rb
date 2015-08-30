class BoyFriend
  def sayHello
    'I am a wonderful boy friend!'
  end
end

class BoyFriendDecorator < SimpleDelegator
end

class BoyFriendWithHouse < BoyFriendDecorator
  def sayHello
    super + ' I have a large House!'
  end
end