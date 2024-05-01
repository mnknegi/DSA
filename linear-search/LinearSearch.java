
// Java code for linearly searching x in arr[].

import java.io.*;

class LinearSearch {
  public static int search(int arr[], int lenght, int item) {
    for(int i = 0; i < lenght; i++) {
      if (arr[i] == item)
        return i;
    }
    return -1;
  }

  // Driver code
public static void main(String args[]) {
  int arr[] = {10, 20, 30, 40, 50};
  int item = 30;
  int itemIndex = search(arr, arr.length, item);

  if (itemIndex == -1)
    System.out.println("Item not found");
  else
    System.out.println("Item found at index: " + itemIndex);

}

}

/*
 * Time & Space complexity
 * Best case: O(1), Element may found at the first index.
 * Worst case : O(N), Element may found at the last index.
 * Average case: O(N)
 * 
 * Auxiliary Space: O(1) as except for the variable to iterate through the list, no other variable is used. 
 */

