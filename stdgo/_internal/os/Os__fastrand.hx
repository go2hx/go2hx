package stdgo._internal.os;
function _fastrand():stdgo.GoUInt32 return std.Std.random(1) > 0 ? -std.Std.random(2147483647) - 1 : std.Std.random(2147483647);
