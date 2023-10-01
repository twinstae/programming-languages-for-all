const std = @import("std");
pub fn factorial(n: u32) u32 {
    switch (n) {
        0 => return 1,
        1 => return 1,
        else => return n * factorial(n - 1),
    }
}

pub fn main() void {
    const stdout = std.io.getStdOut().writer();
    stdout.print("Enter a number: ");
    stdout.flush();

    const input = try std.io.readLineAlloc(std.heap.page_allocator, std.io.getStdIn());
    const result = try std.fmt.parseInt(input, 10);

    if (result == null or result < 0) {
        stdout.print("Invalid input. Please enter a non-negative integer.\n");
    } else {
        const fact = factorial(result);
        stdout.print("Factorial: {}\n", .{fact});
    }
}