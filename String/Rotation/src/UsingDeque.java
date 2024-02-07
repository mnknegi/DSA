import java.util.ArrayDeque;

public class UsingDeque {

    static ArrayDeque<Character> createCharacterDeque(String inputString) {
        ArrayDeque<Character> charDeque = new ArrayDeque<>();
        for (char c : inputString.toCharArray()) {
            charDeque.addLast(c);
        }
        return charDeque;
    }

    static String leftRotation(String inputString, int index) {

        ArrayDeque<Character> charDeque = createCharacterDeque(inputString);

        for (int i = 0; i < index; i++) {
            char firstChar = charDeque.removeFirst();
            charDeque.addLast(firstChar);
        }

        StringBuilder builder = new StringBuilder();
        for (Character character : charDeque) {
            builder.append(character);
        }
        return builder.toString();
    }

    static String rightRotation(String inputString, int index) {

        ArrayDeque<Character> charDeque = createCharacterDeque(inputString);

        for(int i = 0; i < index; i++) {
            char lastChar = charDeque.removeLast();
            charDeque.addFirst(lastChar);
        }

        StringBuilder builder = new StringBuilder();
        for (Character c : charDeque) {
            builder.append(c);   
        }
        return builder.toString();
    }

    public static void main(String[] args) {
        int index = 2;
        System.out.println(leftRotation("Mayank", index));
        System.out.println(rightRotation("Mayank", index));
    }

}
