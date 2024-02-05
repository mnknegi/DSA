
public class UsingLoop {
    public static void main(String[] args) {
        String str = "GeeksforGeeks";
        System.out.println(reverseString(str));
    }

    public static String reverseString(String inputString) {
        StringBuilder reverseString = new StringBuilder();
        for (int i = inputString.length() - 1; i >= 0; i--) {
            reverseString.append(inputString.charAt(i));
        }
        return reverseString.toString();
    }
}
