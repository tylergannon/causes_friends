module ArrayToRBTree
  def to_rbtree
    t = RedBlackTree.new
    each{|el| t.add el}
    t    
  end
  def add(el)
    self << el
  end
end

Array.send :include, ArrayToRBTree

