
public class LargestThreeElements {
  public static void printLargestThree(int arr[]) {
    int length = arr.length;

    if(length < 3) {
      System.out.println("Array size is too small");
      return;
    }

    int first, second, third;
    first = second = third = Integer.MIN_VALUE;

    for(int i = 0; i < length - 1; i++) {
      if(arr[i] > first) {
        third = second;
        second = first;
        first = arr[i];
      }
      else if(arr[i] > second) {
        third = second;
        second = arr[i];
      }
      else if(arr[i] > third) {
        third = arr[i];
      }
    }

      System.out.println("First: " + first);
      System.out.println("Second: " + second);
      System.out.println("Third: " + third);
  }

  public static void main(String[] args) {
    int arr[] = {1,4,7,3,5,2,9,8};
    printLargestThree(arr);
  }

}

/*
 * Time complexity: O(n)
 * Auxiliary space: O(1)
 */