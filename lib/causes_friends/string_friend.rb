module StringFriend
  def friend? other
    one,other = self.length > other.length ? [self, other] : [other, self]

    for char, index in one.chars.each_with_index
      if char[0] != other[index]
        return (one.substitution_at?(index, other) or one.deletion_at?(index, other) )
      end
    end
    return true
  end
  
  def substitution_at?(index, other)
    self[index+1..-1]==other[index+1..-1]
  end
  def deletion_at?(index, other)
    self[index+1..-1]==other[index..-1]
  end
end

String.send :include, StringFriend

