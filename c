import java.util.Arrays;

public class SecondLargestFinder {

    public static int findSecondLargest(int[] arr) throws Exception {
        if (arr == null || arr.length < 2) {
            throw new Exception("Array must have at least two elements.");
        }

        // Sort in ascending order
        Arrays.sort(arr);

        // Find the second largest by scanning from the end
        int largest = arr[arr.length - 1];
        for (int i = arr.length - 2; i >= 0; i--) {
            if (arr[i] != largest) {
                return arr[i]; // second largest found
            }
        }

        throw new Exception("No second largest element found.");
    }

    public static void main(String[] args) {
        int[] numbers = {5, 7, 2, 7, 3};

        try {
            System.out.println("Second largest element: " + findSecondLargest(numbers));
        } catch (Exception e) {
            System.out.println("Error: " + e.getMessage());
        }
    }
}