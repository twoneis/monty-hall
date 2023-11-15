const std = @import("std");

pub fn main() !void {
    // const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();

    try stdin.readUntilDelimiter

    try stdout.print("Hello World\n", .{});
}
