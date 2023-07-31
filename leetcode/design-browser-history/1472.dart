
class Node {
  String? value;
  Node? next;
  Node? previous;
  Node(String source) {
    value = source;
    previous = next = null;
  }
}

class BrowserHistory {
  late Node root;
  BrowserHistory(String homepage) {
    root = Node(homepage);
  }

  void visit(String url) {
    Node node = Node(url);
    root.next = node;
    node.previous = root;
    root = node;
  }

  String back(int steps) {
    Node current = root;
    while (steps > 0 && current.previous != null) {
      current = current.previous!;
      steps--;
    }
    root = current;
    return current.value!;
  }

  String forward(int steps) {
    Node cur = root;
    while (steps > 0 && cur.next != null) {
      cur = cur.next!;
      steps--;
    }
    root = cur;
    return cur.value!;
  }
}