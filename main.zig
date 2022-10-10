const std = @import("std");
const warn = std.debug.print;

const cpus = 8;

pub fn main() anyerror!void {
    const string = [_]u8{ 'a', 'b', 'c' };

    for (string) |character, index| {
        _ = character;
        _ = index;
        warn("hello this is {u}\n", .{character});
    }

    try info();
}

pub fn info() anyerror!void {
    warn("Cores: {}\n", .{cpus});
    warn("AC adapter status: {}\n", .{.ischarging});
    warn("Average system load: {} \n", .{.avgload});
    warn("System temperature: {} °C\n", .{.avgtemp});

    //for (cpus) |c, i| {
    //    warn("i = {}", .{i});
    //}
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
