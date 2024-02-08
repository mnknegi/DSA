
public class UsingRecursion {

    static String removeOccurances(String inputString, char charToRemove) {
        if (inputString.length() == 0)
            return "";

        if (inputString.charAt(0) == charToRemove) {
            return removeOccurances(inputString.substring(1), charToRemove);
        }

        return inputString.charAt(0) + removeOccurances(inputString.substring(1),
                charToRemove);
    }

    public static void main(String[] args) {
        System.out.println(removeOccurances("Mayank", 'a'));
    }
}
