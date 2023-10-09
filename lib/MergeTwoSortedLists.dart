void main(List<String> arguments) {
  var solution = Solution();

  ListNode? listNode1, listNode2;

  // listNode1 = ListNode(1, ListNode(2, ListNode(4, null)));
  // listNode2 = ListNode(1, ListNode(3, ListNode(4, null)));

  // listNode1 = ListNode(0, null);
  // listNode2 = ListNode(0, null);

  listNode1 = ListNode();
  listNode2 = ListNode(0, null);

  // listNode1 = ListNode();
  // listNode2 = ListNode();

  var ret = solution.mergeTwoLists(listNode1, listNode2);
  print(ret);
}

class Solution {
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    List lstOne = [];
    List lstTwo = [];

    if (list1 != null) {
      ListNode Templ1 = list1;

      if (Templ1.next == null) {
        if (Templ1.val == 0) {
          lstOne.add(Templ1.val);
        } else if (Templ1.val >= 0) {
          lstOne.add(Templ1.val);
        }
      }

      while (Templ1.next != null) {
        lstOne.add(Templ1.val);

        // update the Templ1
        Templ1 = Templ1.next!;
        if (Templ1.next == null) {
          lstOne.add(Templ1.val);
        }
      }
    } else {
      lstOne = [];
    }

    if (list2 != null) {
      ListNode Templ2 = list2;

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

    //-------------------------------------------------------------------------

    for (int i = 0; i < lstOne.length; i++) {
      lstTwo.add(lstOne[i]);
    }

    lstTwo.sort();

    print(lstTwo);

    //-------------------------------------------------------------------------
    ListNode? linkedListMerged = ListNode();
    ListNode head = linkedListMerged;

    for (var i in lstTwo) {
      linkedListMerged?.next = ListNode(i);

      //update linkedListMerged to fill the next
      linkedListMerged = linkedListMerged?.next;
    }

    return head.next;
  }
}

class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}
