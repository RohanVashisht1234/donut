const std = @import("std");

pub fn main() !void {
    var A: f32 = 0;
    var B: f32 = 0;
    var z: [1760]f32 = undefined;
    var b: [1760]u8 = undefined;
    std.debug.print("\x1b[2J",.{});
    while (true) {
        @memset(&z, 0);
        @memset(&b, 32);
        var j: f32 = undefined;
        while (j < 6.28) : (j += 0.07) {
            var i: f32 = 0;
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
                const t: f32 = c * h * g - f * e;
                const x: i32 = @bitCast(40 + 30 * D * (l * h * m - t * n));
                const y: i32 = @bitCast(12 + 15 * D * (l * h * n + t * m));
                const o: usize = x + 80 * y; // int overflow
                const N: usize = @intFromFloat( 8 * ((f * e - c * d * g) * m - c * d * e - f * g - l * d * n));
                if (22 > y and y > 0 and x > 0 and 80 > x and D > z[o]) {
                    z[o] = D;
                    if (N > 0) {
                        b[o] = ".,-~:;=!*#$@"[N];
                    } else {
                        b[o] = ".,-~:;=!*#$@"[0];
                    }
                }
            }
        }
        std.debug.print("\x1b[H", .{});
        var k: usize = 0;
        while (k < 1761) : (k += 1) {
            if (@rem(k,80)!=0) {
                std.debug.print("{}", .{b[k] });
            } else {
                std.debug.print("{}", .{10});
            }
            A += 0.00004;
            B += 0.00002;
        }

        std.time.sleep(30000);
    }
    return;
}