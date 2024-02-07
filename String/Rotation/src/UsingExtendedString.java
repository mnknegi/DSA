
public class UsingExtendedString {

    static String leftRotation(String inputString, int index) {
        String extendedString = inputString + inputString;
        int lenght = inputString.length();
        String output = extendedString.substring(index, lenght + index);
        return output;
    }

    static String rightRotation(String inputString, int index) {
        int length = inputString.length();
        String output = leftRotation(inputString, length - index);
        return output;
    }

    public static void main(String[] args) {
        int index = 2;
        System.out.println(leftRotation("Mayank", index));
        System.out.println(rightRotation("Mayank", index));
    }

}
