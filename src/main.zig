const std = @import("std");
const stdout = std.io.getStdOut().writer();
const rnd = std.rand.DefaultPrng.init(std.time.milliTimestamp());

pub fn main() !void {
    const n: u16 = 100;

    try stdout.print("{u}\n", .{n});
}

fn monty_hall(n: u32) bool {
    _ = n;
}
