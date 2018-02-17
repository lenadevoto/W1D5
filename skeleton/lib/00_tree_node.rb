class PolyTreeNode

  attr_accessor :value
  attr_reader :parent, :children

  def initialize(value = nil)
    @value = value
    @parent = nil
    @children = []
  end

  # def children
  #   @children.dup
  # end

  def parent=(new_parent)
    return if self.parent == new_parent
    @parent.children.delete(self) unless @parent.nil?
    @parent = new_parent
    @parent.children << self unless @parent.nil?

    # self
  end

  def add_child(new_child)
    return if self.children.include?(new_child)

    # self.children << new_child
    new_child.parent = self
  end

  def remove_child(child_node)
    raise 'Not a child' unless self.children.include?(child_node)
    child_node.parent = nil
  end

  def dfs(target_value)
    return if target_value == self.value

  end


end
