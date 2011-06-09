require 'thread'

class NetworkBuilder
  attr_accessor :friend_finder, :word_list
  def initialize(friend_finder=nil)
    self.friend_finder = friend_finder || FriendFinder.new
  end
  def size_of_causes_network
    # That's the total number of words minus the number outside the network.
    self.friend_finder ||= FriendFinder.new

    queue = Queue.new; queue << 'causes'
    friends_of_the_cause = ['causes'].to_rbtree
    i = 0
    while not queue.empty?
      word = queue.pop
      friends = friend_finder.friends_of(word)
      for friend in friends.select{|t| not friends_of_the_cause.include?(t)}
        queue << friend
        friends_of_the_cause.add friend
      end
      
      if (i+=1)%1000==0 then puts i end
    end
    puts "There are #{friends_of_the_cause.size} in the network."
  end
end

