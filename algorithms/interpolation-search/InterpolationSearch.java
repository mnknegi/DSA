
/*
 * Interpolation search is a improvement on Binary Search.
 * Values in a sorted array and uniformaly distributed.
 * Binary search go to the middle element to check, whereas interpolation search may go to different locations according to the value of the search element.
 * If the value of the key is closer to the last element, interpolation search is likely to start search towards to the end side.
 * 
 * pos = low + {(high - low) * (item - arr[low])}/{arr[high] - arr[low]}
 */

 public class InterpolationSearch {

  public static int search(int arr[], int low, int high, int item) {
    int pos = -1;
    if (low <= high && item >= arr[low] && item <= arr[high]) {

      pos = low + (((high - low) * (item - arr[low]))/(arr[high] - arr[low]));

      if (arr[pos] == item)
        return pos;

      if (arr[pos] < item)
        return search(arr, pos + 1, high, item);

      if (arr[pos] > item)
        return search(arr, low, pos - 1, item);
    }
    return -1;
  }

  public static void main(String[] args) {
    int arr[] = {1,4,7,9,12,45,56,78,99};
    int result = search(arr, 0, arr.length - 1, 56);
    if (result == -1)
      System.out.println("Item not found");
    else 
      System.out.println("Item found at index: " + result);
  }
 }

 /*
  * Time Complexity: O(log2(log2n)) avg case, worse case: O(n)
  * Space complexity: O(1)
  */