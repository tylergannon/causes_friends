class FriendFinder
  THE_ALPHABET = "abcdefghijklmnopqrstuvwxyz".chars
  LENGTH_RANGE = 2..45

  attr_accessor :word_list
  def initialize(word_list=nil)
    self.word_list = word_list || WordList.build.to_rbtree
  end

  def friends_of(word)
    possible_friends_for(word).select{|other| word.friend? other}
  end

  def possible_friends_for(word)
    search_tree[hash(word)]
  end
  
  #  A hash with keys for all combinations of length and first two characters.
  #    Values are all words that might be friends of a word of that length
  #    and beginning with those two characters.
  #    example:   6ca => %w(causes cussed cause austria ...)
  def search_tree
    @search_tree ||= build_search_tree
  end

  def build_search_tree
    puts "Building search tree.. first create list of ranges."
    _search_tree = RedBlackTree.new
    LENGTH_RANGE.each { |length|
      for x in THE_ALPHABET
        for y in THE_ALPHABET
          _search_tree["#{length}#{x}#{y}"] = []
        end
      end
    }
    puts "now add words"

    word_list.each_with_index do |word,i|
      if i%1000==0 then puts "#{i}" end
      for hash in search_tree_nodes_for(word)
        _search_tree[hash] << word
      end
    end
    puts "ok built tree"
    _search_tree
  end
    
  def search_tree_nodes_for(_word)
    #  same length: 1st char equal or 2nd char equal
    word = _word.chars.to_a
    l = word.length.to_s
    res = THE_ALPHABET.map{|c|l+ word[0]+c} + THE_ALPHABET.map{|c| l+c+word[0]}
    # shorter: word 1st or 2nd char = 1st char of 
    if word.length > LENGTH_RANGE.min
      s = (word.length-1).to_s
      res += ["#{s}#{word[0]}#{word[1]}", "#{s}#{word[1]}#{word[2]}", "#{s}#{word[0]}#{word[2]}"]
    end
    
    if word.length < LENGTH_RANGE.max
      s = (word.length+1).to_s
      res += THE_ALPHABET.map{|c|s+ word[0]+c} + THE_ALPHABET.map{|c| s+c+word[0]}
    end
    return res
  end
  
  def hash(word)
    word = word.chars.to_a
    "#{word.length}#{word[0]}#{word[1]}"
  end
end
