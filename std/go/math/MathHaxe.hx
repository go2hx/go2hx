package std.go.math;

import stdgo.math.Math as GoMath;

function naN():stdgo.GoFloat64
	return std.Math.NaN;

function log(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.log(_x.toBasic());
}

function mod(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64 {
	return _x.toBasic() % _y.toBasic();
}

function atan(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.atan(_x.toBasic());

function atan2(_x:stdgo.GoFloat64, _y:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.atan2(_y.toBasic(), _x.toBasic());

function _archFloor(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.floor(_x);

function _archCeil(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.ceil(_x);

function _archTrunc(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.trunc(_x);

function _cos(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.cos(_x);

function _sin(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return GoMath.sin(_x);


function sin(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.sin(_x.toBasic());

function cos(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.cos(_x.toBasic());

function tan(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.tan(_x.toBasic());

function asin(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.asin(_x.toBasic());

function acos(_x:stdgo.GoFloat64):stdgo.GoFloat64
	return std.Math.acos(_x.toBasic());

function sqrt(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.sqrt(_x);
}

function exp(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.exp(_x.toBasic());
}

function isNanN(_f:stdgo.GoFloat64):Bool {
	return std.Math.isNaN(_f.toBasic());
}

function abs(_x:stdgo.GoFloat64):stdgo.GoFloat64 {
	return std.Math.abs(_x.toBasic());
}
