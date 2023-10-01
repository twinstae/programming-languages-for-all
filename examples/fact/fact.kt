fun factorial(n: Int): Int {
    return when {
        n == 0 -> 1
        n == 1 -> 1
        n > 1 -> n * factorial(n - 1)
        else -> throw IllegalArgumentException("Invalid input. Please enter a non-negative integer.")
    }
}

fun main() {
    println("Enter a number:")
    val input = readLine()
    try {
        val number = input?.toInt() ?: throw IllegalArgumentException("Invalid input. Please enter a valid non-negative integer.")
        if (number < 0) {
            throw IllegalArgumentException("Invalid input. Please enter a non-negative integer.")
        }
        println(factorial(number))
    } catch (e: NumberFormatException) {
        println("Invalid input. Please enter a valid non-negative integer.")
    } catch (e: IllegalArgumentException) {
        println(e.message)
    }
}