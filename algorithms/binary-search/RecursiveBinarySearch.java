
// Java implementation of recursive Binary Search

class RecursiveBinarySearch {
  public static int recursiveBinarySearch(int arr[], int low, int high, int item) {
    if(high >= low) {

      int mid = low + (high - low)/2;

      if(arr[mid] == item)
        return mid;

      if(arr[mid] > item) 
        return recursiveBinarySearch(arr, low, mid - 1, item);
      else 
        return recursiveBinarySearch(arr, mid + 1, high, item);
    }
    return -1;
  }

  public static void main(String[] args) {
    int arr[] = {1, 5, 8, 10, 22, 45, 56, 78, 95};
    int itemIndex = recursiveBinarySearch(arr, 0, arr.length - 1, 5);
    if (itemIndex == -1)
      System.out.println("Item not found");
    else
      System.out.println("Item found at " + itemIndex);
  }
}

/*
 * Time Complexity: 
 * Best Case: O(1)
 * Average Case: O(log N)
 * Worst Case: O(log N)
 * 
 * Auxiliary Space: O(1), If the recursive call stack is considered then the auxiliary space will be O(logN).
 */