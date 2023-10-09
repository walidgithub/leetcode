void main(List<String> arguments) {
  var solution = Solution();

  ListNode? listNode1, listNode2;
  // listNode1 = ListNode(
  //     9,
  //     ListNode(
  //         9,
  //         ListNode(
  //             9, ListNode(9, ListNode(9, ListNode(9, ListNode(9, null)))))));
  // listNode2 = ListNode(9, ListNode(9, ListNode(9, ListNode(9, null))));
  listNode1 = ListNode(2, ListNode(4, ListNode(9, null)));
  listNode2 = ListNode(5, ListNode(6, ListNode(4, ListNode(9, null))));
  var ret = solution.addTwoNumbers(listNode1, listNode2);
  print(ret);
  /*
  [2,4,3,2]
  [5,6,4]
  >> [7,0,8]
   */
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
    ListNode Templ1 = l1!;
    ListNode Templ2 = l2!;

    List lstOne = [];
    List lstTwo = [];
    List result = [];

    int remained = 0;

    if (Templ1.next == null) {
      lstOne.add(Templ1.val);
    }

    while (Templ1.next != null) {
      lstOne.add(Templ1.val);

      // update the Templ1
      Templ1 = Templ1.next!;
      if (Templ1.next == null) {
        lstOne.add(Templ1.val);
      }
    }

    if (Templ2.next == null) {
      lstTwo.add(Templ2.val);
    }

    while (Templ2.next != null) {
      lstTwo.add(Templ2.val);

      // update the Templ2
      Templ2 = Templ2.next!;
      if (Templ2.next == null) {
        lstTwo.add(Templ2.val);
      }
    }
    //---------------------------------------------------------
    int biggestLst = 0;

    if (lstOne.length < lstTwo.length) {
      biggestLst = lstTwo.length;
    } else {
      biggestLst = lstOne.length;
    }

    int L1index = 0;

    for (int i = 0; i < biggestLst; i++) {
      int total = 0;

      if (lstOne.length > lstTwo.length) {
        if (L1index >= lstTwo.length) {
          total = lstOne[i] + remained;
        } else {
          total = lstOne[i] + lstTwo[i] + remained;
        }
      } else {
        if (L1index >= lstOne.length) {
          total = lstTwo[i] + remained;
        } else {
          total = lstOne[i] + lstTwo[i] + remained;
        }
      }

      if (total.toString().length > 1) {
        var c = int.parse((total.toString().substring(1, 2)));
        result.add(c);
        remained = int.parse(total.toString().substring(0, 1));
      } else {
        result.add(total);
        remained = 0;
      }
      L1index++;
    }

    if (remained > 0) {
      result.add(remained);
    }

    //---------------------------------------------------------------

    ListNode? linkedListMerged = ListNode();
    ListNode head = linkedListMerged;

    for (var i in result) {
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
