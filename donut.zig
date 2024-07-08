const std = @import("std");
const stdio_h = @cImport(@cInclude("stdio.h"));

pub fn main() void {
    var A: f32 = 0;
    var B: f32 = 0;
    var i: f32 = undefined;
    var j: f32 = undefined;
    var k: i32 = undefined;
    var z: [1760]f32 = undefined;
    var b: [1760]u8 = undefined;
    std.debug.print("\x1b[2J", .{});
    while (true) {
        @memset(&z, 0);
        @memset(&b, 32);
        j = 0;
        while (j < 6.28) : (j += 0.07) {
            i = 0;
            while (i < 6.28) : (i += 0.02) {
                const c: f32 = std.math.sin(i);
                const d: f32 = std.math.cos(j);
                const e: f32 = std.math.sin(A);
                const f: f32 = std.math.sin(j);
                const g: f32 = std.math.cos(A);
                const h: f32 = d + 2;
                const D: f32 = 1 / (c * h * e + f * g + 5);
                const l: f32 = std.math.cos(i);
                const m: f32 = std.math.cos(B);
                const n: f32 = std.math.sin(B);
                const t: f32 = ((c * h) * g) - (f * e);
                const x: i32 = @intFromFloat(40 + 30 * D * (l * h * m - t * n));
                const y: i32 = @intFromFloat(@as(f32, @floatFromInt(@as(c_int, 12))) + ((@as(f32, @floatFromInt(@as(c_int, 15))) * D) * (((l * h) * n) + (t * m))));

                const o: i32 = x + 80 * y;

                const N: i32 = @intFromFloat(@as(f32, @floatFromInt(@as(c_int, 8))) * ((((((f * e) - ((c * d) * g)) * m) - ((c * d) * e)) - (f * g)) - ((l * d) * n)));

                if (((((@as(c_int, 22) > y) and (y > @as(c_int, 0))) and (x > @as(c_int, 0))) and (@as(c_int, 80) > x)) and (D > z[@as(c_uint, @intCast(o))])) {
                    z[@as(c_uint, @intCast(o))] = D;
                    b[@as(c_uint, @intCast(o))] = ".,-~:;=!*#$@"[@as(c_uint, @intCast(if (N > @as(c_int, 0)) N else @as(c_int, 0)))];
                }
            }
        }
        _ = stdio_h.printf("\x1b[H");
        k = 0;
        while (k < @as(c_int, 1761)) : (k += 1) {
            _ = stdio_h.putchar(if (@import("std").zig.c_translation.signedRemainder(k, @as(c_int, 80)) != 0) @as(c_int, @bitCast(@as(c_uint, b[@as(c_uint, @intCast(k))]))) else @as(c_int, 10));
            A += 0.00004;
            B += 0.00002;
        }
        std.time.sleep(30000000);
    }
}
