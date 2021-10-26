package stdgo.time;

import haxe.Int64;
import stdgo.StdGoTypes.GoInt32;
import stdgo.StdGoTypes.GoInt64;

// variable refrences
final _localLoc = {};

function sleep(_d) {
	final seconds = _d.__t__.toFloat() / 1000000000;
	Sys.sleep(seconds);
}

inline function after(d) {
	return null;
}

function _now() {
	return Time._now();
}

function _runtimeNano()
	return Time._runtimeNano();

function initLocal() {
	Time._initLocal(_localLoc);
}

inline function newTimer(_d) {
	return null;
}

inline function _parseDuration(_s) {
	return {d: null, err: null};
}

class Time {
	public static function _runtimeNano():GoInt64 {
		return (Date.now().getTime() : GoInt64) * (1000000 : GoInt64);
	}

	public static function _now():{_0:GoInt64, _1:GoInt32, _2:GoInt64} {
		final n = _runtimeNano();
		return {_0: n / 1000000000, _1: n % 1000000000, _2: n};
	}

	public static function _initLocal(_localLoc:Dynamic):Void {
		_localLoc._name = "Local";
		final d = Date.now();
		var offset = d.getTimezoneOffset() * -1;
		var name = "UTC";
		if (offset < 0) {
			name += "-";
			offset *= -1;
		} else {
			name += "+";
		}
		name += Std.string(offset / 60);
		final min = offset % 60;
		if (min != 0) {
			name += ":" + Std.string(min);
		}
		_localLoc._zone = [{_name: name, _offset: offset, _isDST: false}];
	}
}
