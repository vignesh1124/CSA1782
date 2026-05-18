class TreeNode:
    def __init__(self, val, children=None):
        self.val = val
        self.children = children or []

def minimax(node, is_max):
    if not node.children: return node.val
    scores = [minimax(c, not is_max) for c in node.children]
    return max(scores) if is_max else min(scores)

root = TreeNode(0, [
    TreeNode(0, [TreeNode(3), TreeNode(5)]),
    TreeNode(0, [TreeNode(2), TreeNode(9)]),
    TreeNode(0, [TreeNode(12), TreeNode(5)])
])
best = minimax(root, True)
print('Best value for MAX player:', best)
