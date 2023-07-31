class TreeNode {
  int val;
  TreeNode? next;
  TreeNode([this.val = 0, this.next]);
}

class A {
  void deleteNode(TreeNode? node) {
    // Step 1: Set value of current node as value of next node

    node?.val = node.next!.val;

    // Step 2: Delete the next node from list
    node?.next = node.next?.next;
  }
}