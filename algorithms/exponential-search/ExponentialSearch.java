
/*
 * Find range where element is present.
 * Do Binary Search in above found range.
 */

import java.util.Arrays;;

final class ExponentialSearch {

  static int search(int arr[], int lenght, int item) {
    
    if(arr[0] == item) {
      return 0;
    }

    int index = 1;
    while (index < lenght && arr[index] <= item)
      index *= 2;

    return Arrays.binarySearch(arr, index/2, Math.min(index, lenght - 1), item);
  }

  public static void main(String[] args) {
    int arr[] = {1, 4, 6, 9, 14, 56, 67, 88, 99};
    int result = search(arr, arr.length, 99);
    if (result < 0)
      System.out.println("Item not found");
    else 
      System.out.println("Item found at: " + result);
  }
 }