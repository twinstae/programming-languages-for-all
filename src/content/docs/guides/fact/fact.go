package main

import (
	"fmt"
	"log"
)

func factorial(n int) int {
	if n == 0 || n == 1 {
		return 1
	}
	return n * factorial(n-1)
}

func main() {

	fmt.Println("enter a number:")
	var number int
	_, err := fmt.Scanln(&number)
	if err != nil {
		log.Fatal("Invalid input. Please enter a valid non-negative integer.")
	}

	if number > 20 {
		log.Fatal("cannot compute more than fact(20) overflow")
	}
	if number < 0 {
		log.Fatal("Invalid input. Please enter a non-negative integer.")
	}

	fmt.Println(factorial(number))
}
