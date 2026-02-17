import java.util.LinkedHashMap;
import java.util.Map;

public class FirstUniqueWord {

    public static String firstUniqueWord(String text) {
        if (text == null || text.isEmpty()) {
            return null;
        }

        String[] words = text.split("\\s+"); // split by whitespace
        Map<String, Integer> countMap = new LinkedHashMap<>(); // preserve order

        // Count occurrences (case-insensitive)
        for (String word : words) {
            String lower = word.toLowerCase();
            countMap.put(lower, countMap.getOrDefault(lower, 0) + 1);
        }

        // Find first word that appears only once
        for (String word : words) {
            if (countMap.get(word.toLowerCase()) == 1) {
                return word; // return the original case
            }
        }

        return null; // no unique word found
    }

    public static void main(String[] args) {
        String text = "Apple banana apple Cherry date cherry";

        String result = firstUniqueWord(text);
        if (result != null) {
            System.out.println("First unique word: " + result);
        } else {
            System.out.println("No unique word found.");
        }
    }
}