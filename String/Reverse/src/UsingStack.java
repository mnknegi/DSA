import java.util.Stack;

public class UsingStack {
    public static void main(String[] args) {
        char[] inputString = "Mayank".toCharArray();
        System.out.println(reverseString(inputString));
    }

    static String reverseString(char[] arr) {
        Stack<Character> st = new Stack<>();

        for (int i = 0; i < arr.length; i++)
            st.push(arr[i]);

        for (int i = 0; i < arr.length; i++) {
            arr[i] = st.peek();
            st.pop();
        }
        return String.valueOf(arr);
    }
}
