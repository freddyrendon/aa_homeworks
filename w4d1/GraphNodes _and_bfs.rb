require "set"

class GraphNode
  attr_accessor :val, :neighbors

  def initialize(val)
    self.val = val
    self.neighbors = []
  end

  def add_neighbor(node)
        self.neighbors << node
    end

    def bfs(starting_node, target)
    # keep track not just of the queue
    queue = [starting_node]
    # but also of all the nodes we've visited so far
    visited = Set.new()

    until queue.empty? #searching que
        node = queue.shift #movement to next node if not found
        unless visited.include?(node) 
            # If you find the target_value, return the node with that value
            return node.val if node.val == target_value
            visited.add(node) #adds element to set
            queue += node.neighbors
        end
    end
    # If no node is found with the target_value, return nil.
    nil
end



end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
p a.neighbors = [b, c, e]
p c.neighbors = [b, d]
p e.neighbors = [a]
p f.neighbors = [e]
