package std.go.math;

import go.math.Math as GoMath;

function naN():go.GoFloat64
	return std.Math.NaN;

function log(_x:go.GoFloat64):go.GoFloat64 {
	return std.Math.log(_x.toBasic());
}

function mod(_x:go.GoFloat64, _y:go.GoFloat64):go.GoFloat64 {
	return _x.toBasic() % _y.toBasic();
}

function atan(_x:go.GoFloat64):go.GoFloat64
	return std.Math.atan(_x.toBasic());

function atan2(_x:go.GoFloat64, _y:go.GoFloat64):go.GoFloat64
	return std.Math.atan2(_y.toBasic(), _x.toBasic());

function _archFloor(_x:go.GoFloat64):go.GoFloat64
	return GoMath.floor(_x);

function _archCeil(_x:go.GoFloat64):go.GoFloat64
	return GoMath.ceil(_x);

function _archTrunc(_x:go.GoFloat64):go.GoFloat64
	return GoMath.trunc(_x);

function _cos(_x:go.GoFloat64):go.GoFloat64
	return GoMath.cos(_x);

function _sin(_x:go.GoFloat64):go.GoFloat64
	return GoMath.sin(_x);


function sin(_x:go.GoFloat64):go.GoFloat64
	return std.Math.sin(_x.toBasic());

function cos(_x:go.GoFloat64):go.GoFloat64
	return std.Math.cos(_x.toBasic());

function tan(_x:go.GoFloat64):go.GoFloat64
	return std.Math.tan(_x.toBasic());

function asin(_x:go.GoFloat64):go.GoFloat64
	return std.Math.asin(_x.toBasic());

function acos(_x:go.GoFloat64):go.GoFloat64
	return std.Math.acos(_x.toBasic());

function sqrt(_x:go.GoFloat64):go.GoFloat64 {
	return std.Math.sqrt(_x);
}

function exp(_x:go.GoFloat64):go.GoFloat64 {
	return std.Math.exp(_x.toBasic());
}

function isNanN(_f:go.GoFloat64):Bool {
	return std.Math.isNaN(_f.toBasic());
}

function abs(_x:go.GoFloat64):go.GoFloat64 {
	return std.Math.abs(_x.toBasic());
}
