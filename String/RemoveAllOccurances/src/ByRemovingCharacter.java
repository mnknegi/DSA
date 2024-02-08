
public class ByRemovingCharacter {

    static String removeCharacter(String inputString, char charToRemove) {
        StringBuilder builder = new StringBuilder(inputString);
        for (int i = 0; i < builder.length(); i++) {
            if (builder.charAt(i) == charToRemove) {
                builder.deleteCharAt(i);
                i--;
            }
        }
        return builder.toString();
    }

    public static void main(String[] args) {
        String newString = removeCharacter("Mayank", 'y');
        System.out.println(newString);
    }

}