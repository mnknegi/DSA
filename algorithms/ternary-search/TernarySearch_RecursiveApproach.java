
// Java program to illustrate
// recursive approach to ternary search

public class TernarySearch_RecursiveApproach {
  
  public static int search(int arr[], int low, int high, int item) {
if (high >= low) {
    int mid1 = low + (high - low)/3;
    int mid2 = high - (high - low)/3;

    if (arr[mid1] == item)
      return mid1;

    if (arr[mid2] == item)
      return mid2;

    if (item < arr[mid1]) {
      return search(arr, low, mid1 - 1, item);
    }
    else if (item > arr[mid2]) {
      return search(arr, mid2 + 1, high, item);
    }
    else {
      return search(arr, mid1 + 1, mid2 - 1, item);
    }
  }
  return -1;
  }

public static void main(String[] args) {
  int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  int result = search(arr, 0, arr.length - 1, 9);
  if (result == -1)
    System.out.println("Item not found");
  else
    System.out.println("Item found at index: " + result);
}
}

/* 
 * Time complexity: O(log3n)
 * Auxiliary space: O(log3n)
 */