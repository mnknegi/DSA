
import java.lang.String;

// Swap last character with first character.
// Recursive function will be call n/2 times.

public class RecursiveReverse {
    public static void main(String[] args) throws Exception {
        char[] str = "Mayank".toCharArray();
        recursiveReverse(str, 0);
        System.out.println(String.valueOf(str));
    }

    static void recursiveReverse(char[] inputString, int nextIndex) {

        int length = inputString.length;

        if (length / 2 == nextIndex)
            return;

            swap(inputString, nextIndex, length - nextIndex - 1);

            recursiveReverse(inputString, nextIndex + 1);
    }

    static void swap(char[] arr, int leftIndex, int rightIndex) {
        char temp = arr[leftIndex];
        arr[leftIndex] = arr[rightIndex];
        arr[rightIndex] = temp;
    }
}
