
// Java implementation of iterative Binary Search

import java.io.*;

class BinarySearch {
  public static int search(int arr[], int item) {
  int low = 0, high = arr.length - 1;
  while(low < high) {
    int mid = low + (high - low)/2;
    if(arr[mid] == item) {
      return mid;
    }

  if(item < arr[mid])
    high = mid - 1;
  else 
    low = mid + 1;

  }
  return -1;
  }

  public static void main(String[] args) {
    int arr[] = {1, 5, 8, 10, 22, 45, 56, 78, 95};
    int itemIndex = search(arr, 22);
    if (itemIndex == -1)
      System.out.println("Item not found");
    else 
      System.out.println("Item found at index: " + itemIndex);
  }
}

/*
 * Time Complexity: O(log N)
 * Auxiliary Space: O(1)
 */