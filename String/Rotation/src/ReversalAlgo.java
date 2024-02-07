
// Reversal Algoright for rotation.

public class ReversalAlgo {

    static String leftRotation(String inputString, int index) {
        String output = inputString.substring(index) + inputString.substring(0, index);
        return output;
    }

    static String rightRotation(String inputString, int index) {
        int lenght = inputString.length();
        String output = leftRotation(inputString, lenght - index);
        return output;
    }

    public static void main(String[] args) {
        int index = 2;
        System.out.println("Left rotation " + leftRotation("Mayank", index));
        System.out.println("right rotation " + rightRotation("Mayank", index));
    }

}