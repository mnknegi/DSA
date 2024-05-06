
// Java program to illustrate
// the iterative approach to ternary search

import java.io.*;

public class TernarySearch_IterativeApproach {

  public static int search(int arr[], int item) {
    int lenght = arr.length;
    int low = 0, high = lenght - 1;

    while (high >= low) {
      int mid1 = low + (high - low)/3;
      int mid2 = high - (high - low)/3;

      if (arr[mid1] == item) {
        return mid1;
      }

      if (arr[mid2] == item) {
        return mid2;
      }

      if (item < arr[mid1]) {
        high = mid1 - 1;
      }

      if (item > arr[mid1] && item < arr[mid2]) {
        low = mid1 + 1;
        high = mid2 - 1;
      }

      if (item > arr[mid2]) {
        low = mid2 + 1;
      }
    }
    return -1;
  }

public static void main(String[] args) {
  int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
  int result = search(arr, 5);
  if (result == -1)
    System.out.println("Item not found");
  else 
    System.out.println("Item found at index: " + result);
}
}

/*
 * Time Complexity:
 * 
 * Worst case: O(log3N)
 * Average case: Θ(log3N)
 * Best case: Ω(1)
 * 
 * Auxiliary Space: O(1)
 */