package stdgo._internal.math.rand;
function _fastrand64():stdgo.GoUInt64 return haxe.Int64.make(std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647), std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647));
