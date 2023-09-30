def factorial(n: int) -> int:
    result = 1
    for n in range(1, n + 1):
        result *= n
    return result


if __name__ == "__main__":
    raw = input("enter a number:\n")

    if not raw.isdigit():
        raise Exception("Invalid input. Please enter a valid non-negative integer.")

    number = int(raw)
    if number < 0:
        raise Exception("Invalid input. Please enter a non-negative integer.")

    print(factorial(number))
