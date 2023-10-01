#include <stdio.h>

int factorial(int n) {
    if (n == 0 || n == 1) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

int main() {
    int number;
    printf("Enter a number: ");
    scanf("%d", &number);

    if (number < 0) {
        printf("Invalid input. Please enter a non-negative integer.\n");
    } else {
        int result = factorial(number);
        printf("%d\n", result);
    }

    return 0;
}