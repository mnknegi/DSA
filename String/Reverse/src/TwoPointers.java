public class TwoPointers {
    public static void main(String[] args) {
        char[] str = "Mayank".toCharArray();
        reverseString(str);
        System.out.println(String.valueOf(str));
    }

    static void reverseString(char[] arr) {
        int length = arr.length;

        for (int leftIndex = 0, rightIndex = length - 1; rightIndex > leftIndex; leftIndex++, rightIndex--) {
            char temp = arr[leftIndex];
            arr[leftIndex] = arr[rightIndex];
            arr[rightIndex] = temp;
        }
    }
}
