void main(List<String> arguments) {
  var solution = Solution();

  ListNode? listNode1;

  // listNode1 = ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5, null)))));

  listNode1 = ListNode(1, ListNode(2, null));

  // listNode1 = ListNode(1, null);

  // listNode1 = ListNode();

  // Input: head = [1,2,3,4,5], n = 2
  // Output: [1,2,3,5]

  // Input: head = [1], n = 1
  // Output: []

  // Input: head = [1,2], n = 1
  // Output: [1]

  var ret = solution.removeNthFromEnd(listNode1, 1);
  print(ret);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    List lstTwo = [];

    if (head != null) {
      ListNode Templ2 = head;

      if (Templ2.next == null) {
        if (Templ2.val == 0) {
          lstTwo.add(Templ2.val);
        } else if (Templ2.val != 0) {
          lstTwo.add(Templ2.val);
        }
      }

      while (Templ2.next != null) {
        lstTwo.add(Templ2.val);

        // update the Templ2
        Templ2 = Templ2.next!;
        if (Templ2.next == null) {
          lstTwo.add(Templ2.val);
        }
      }
    } else {
      lstTwo = [];
    }

    lstTwo.removeAt(lstTwo.length - n);

    print(lstTwo);

    //-------------------------------------------------------------------------

    ListNode? linkedListMerged = ListNode();
    ListNode head2 = linkedListMerged;

    for (var i in lstTwo) {
      linkedListMerged?.next = ListNode(i);

      //update linkedListMerged to fill the next
      linkedListMerged = linkedListMerged?.next;
    }

    return head2.next;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
