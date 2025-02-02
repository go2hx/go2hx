package stdgo._internal.math;
function trunc(_x:stdgo.GoFloat64):stdgo.GoFloat64 return _x > 0 ? stdgo._internal.math.Math_floor.floor(_x) : stdgo._internal.math.Math_ceil.ceil(_x);
