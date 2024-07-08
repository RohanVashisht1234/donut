const std = @import("std");
const stdio_h = @cImport(@cInclude("stdio.h"));

pub export fn main() c_int {
    var A: f32 = 0;
    _ = &A;
    var B: f32 = 0;
    _ = &B;
    var i: f32 = undefined;
    _ = &i;
    var j: f32 = undefined;
    _ = &j;
    var k: c_int = undefined;
    _ = &k;
    var z: [1760]f32 = undefined;
    _ = &z;
    var b: [1760]u8 = undefined;
    _ = &b;
    _ = stdio_h.printf("\x1b[2J");
    while (true) {
        @memset(&z, 0);
        @memset(&b, 32);
        {
            j = 0;
            while (@as(f64, @floatCast(j)) < 6.28) : (j += @as(f32, @floatCast(0.07))) {
                {
                    i = 0;
                    while (@as(f64, @floatCast(i)) < 6.28) : (i += @as(f32, @floatCast(0.02))) {
                        var c: f32 = @as(f32, @floatCast(std.math.sin(@as(f64, @floatCast(i)))));
                        _ = &c;
                        var d: f32 = @as(f32, @floatCast(std.math.cos(@as(f64, @floatCast(j)))));
                        _ = &d;
                        var e: f32 = @as(f32, @floatCast(std.math.sin(@as(f64, @floatCast(A)))));
                        _ = &e;
                        var f: f32 = @as(f32, @floatCast(std.math.sin(@as(f64, @floatCast(j)))));
                        _ = &f;
                        var g: f32 = @as(f32, @floatCast(std.math.cos(@as(f64, @floatCast(A)))));
                        _ = &g;
                        var h: f32 = d + @as(f32, @floatFromInt(@as(c_int, 2)));
                        _ = &h;
                        var D: f32 = @as(f32, @floatFromInt(@as(c_int, 1))) / ((((c * h) * e) + (f * g)) + @as(f32, @floatFromInt(@as(c_int, 5))));
                        _ = &D;
                        var l: f32 = @as(f32, @floatCast(std.math.cos(@as(f64, @floatCast(i)))));
                        _ = &l;
                        var m: f32 = @as(f32, @floatCast(std.math.cos(@as(f64, @floatCast(B)))));
                        _ = &m;
                        var n: f32 = @as(f32, @floatCast(std.math.sin(@as(f64, @floatCast(B)))));
                        _ = &n;
                        var t: f32 = ((c * h) * g) - (f * e);
                        _ = &t;
                        var x: c_int = @as(c_int, @intFromFloat(@as(f32, @floatFromInt(@as(c_int, 40))) + ((@as(f32, @floatFromInt(@as(c_int, 30))) * D) * (((l * h) * m) - (t * n)))));
                        _ = &x;
                        var y: c_int = @as(c_int, @intFromFloat(@as(f32, @floatFromInt(@as(c_int, 12))) + ((@as(f32, @floatFromInt(@as(c_int, 15))) * D) * (((l * h) * n) + (t * m)))));
                        _ = &y;
                        var o: c_int = x + (@as(c_int, 80) * y);
                        _ = &o;
                        var N: c_int = @as(c_int, @intFromFloat(@as(f32, @floatFromInt(@as(c_int, 8))) * ((((((f * e) - ((c * d) * g)) * m) - ((c * d) * e)) - (f * g)) - ((l * d) * n))));
                        _ = &N;
                        if (((((@as(c_int, 22) > y) and (y > @as(c_int, 0))) and (x > @as(c_int, 0))) and (@as(c_int, 80) > x)) and (D > z[@as(c_uint, @intCast(o))])) {
                            z[@as(c_uint, @intCast(o))] = D;
                            b[@as(c_uint, @intCast(o))] = ".,-~:;=!*#$@"[@as(c_uint, @intCast(if (N > @as(c_int, 0)) N else @as(c_int, 0)))];
                        }
                    }
                }
            }
        }
        _ = stdio_h.printf("\x1b[H");
        {
            k = 0;
            while (k < @as(c_int, 1761)) : (k += 1) {
                _ = stdio_h.putchar(if (@import("std").zig.c_translation.signedRemainder(k, @as(c_int, 80)) != 0) @as(c_int, @bitCast(@as(c_uint, b[@as(c_uint, @intCast(k))]))) else @as(c_int, 10));
                A += @as(f32, @floatCast(0.00004));
                B += @as(f32, @floatCast(0.00002));
            }
        }
        _ = std.time.sleep(30000);
    }
    return 0;
}