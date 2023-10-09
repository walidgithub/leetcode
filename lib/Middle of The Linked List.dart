void main(List<String> arguments) {
  var solution = Solution();

  ListNode? listNode;

  listNode =
      ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, null)))));

      // listNode = ListNode(
      //     1,
      //     ListNode(
      //         2, ListNode(3, ListNode(4, ListNode(5, ListNode(6, null))))));

  var ret = solution.middleNode(listNode);
  print(ret);
}

class Solution {
  ListNode? middleNode(ListNode? head) {
    ListNode Templ = head!;

    List lstToFill = [];
    List result = [];

    if (Templ.next == null) {
      lstToFill.add(Templ.val);
    }

    while (Templ.next != null) {
      lstToFill.add(Templ.val);

      // update the Templ1
      Templ = Templ.next!;
      if (Templ.next == null) {
        lstToFill.add(Templ.val);
      }
    }

    int mid = (lstToFill.length / 2).floor();
    for (int i = mid; i < lstToFill.length; i++) {
      result.add(lstToFill[i]);
    }

    ListNode? linkedListMerged = ListNode();
    ListNode headLast = linkedListMerged;

    for (var i in result) {
      linkedListMerged?.next = ListNode(i);

      //update linkedListMerged to fill the next
      linkedListMerged = linkedListMerged?.next;
    }

    return headLast.next;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
