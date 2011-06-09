class NetworkCounter
  def self.size_of_causes_network
    friend_finder = FriendFinder.new

    queue = ['causes']
    friends_of_the_cause = queue.to_rbtree

    i = 0
    for word in queue
      friends = friend_finder.friends_of(word)
      for friend in friends.select{|t| not friends_of_the_cause.include?(t)}
        queue.add friend
        friends_of_the_cause.add friend
      end
      
      if (i+=1)%1000==0 then puts i end
    end
    puts "There are #{friends_of_the_cause.size} in the network."
  end
end

