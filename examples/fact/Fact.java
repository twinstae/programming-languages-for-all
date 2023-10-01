import java.util.Scanner;

public class Fact {
    public static void main(String[] args) {
        System.out.println("enter a number:");
        Scanner input = new Scanner(System.in);
        try {
            int n = Integer.parseInt(input.nextLine());
            if (n < 0){
                System.out.println("Invalid input. Please enter a non-negative integer.");
                return;
            }

            System.out.println(factorial(n));
        } catch (NumberFormatException nfe) {
            System.out.println("Invalid input. Please enter a valid non-negative integer.");
        } finally {
            input.close();
        }

    }

    public static int factorial(int n) {
        int result = 1;
        for (int i = 1; i <= n; i++) {
          result = result * i;
        }
        return result;
    }
}