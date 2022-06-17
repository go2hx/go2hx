package stdgo.internal.injector.time;

import haxe.Int64;
import stdgo.StdGoTypes;

// variable refrences

@:local
final _localLoc = {};

function forceUSPacificForTesting() {}

function sleep(_d) {
	final seconds = _d.toFloat() / 1000000000;
	#if sys
	var ticks = Math.floor(seconds * 100);
	while (--ticks > 0) {
		stdgo.internal.Async.tick();
		Sys.sleep(0.01);
	}
	#end
}

function _now() {
	return Time._now();
}

function _modTimer(_t, _when, _period, _f, _arg, _seq) {
	Time._modTimer(_t, _when, _period, _f, _arg, _seq);
}

function _startTimer(_0) {
	Time._startTimer(_0);
}

function _stopTimer(_0)
	return Time._stopTimer(_0);

function _resetTimer(_0, _1)
	return Time._resetTimer(_0, _1);

function _runtimeNano()
	return Time._runtimeNano();

function _initLocal(_localLoc) {
	Time._initLocal(_localLoc);
}

@:local
class Time {
	public static function _stopTimer(_0:Dynamic):Bool {
		final t:Dynamic = _0;
		if ((t._pp : GoUIntptr) != (0 : GoUIntptr)) {
			final timer:haxe.Timer = t._pp;
			timer.stop();
		}
		final wasActive = t._status == 1;
		t._status = 0;
		return wasActive;
	}

	public static function _startTimer(_0:stdgo.time.Time.T_runtimeTimer) {
		final t = _0;
		t._status = 1;
		var diff = (t._when - Time._runtimeNano()) / (1000 * 1000);
		if (diff > 1 << 31 - 1)
			return;
		if (diff < 0)
			diff = 0;
		final d = (diff : GoInt).toBasic() + 1;
		final timer = new haxe.Timer(d);
		timer.run = () -> {
			timer.stop();
			t._status = 0;
			if (t._period != (0 : GoInt64)) {
				t._when += t._period;
				_startTimer(t);
			}
			Go.routine(() -> t._f(t._arg, 0));
		};
		t._pp = (timer : GoUIntptr);
	}

	public static function _resetTimer(_0:stdgo.time.Time.T_runtimeTimer, _1:GoInt64):Bool {
		final t = _0;
		final when = _1;
		final wasActive = t._status == 1;
		return wasActive;
	}

	public static function _modTimer(_t:Dynamic, _when:GoInt64, _period:GoInt64, _f:(AnyInterface, GoUIntptr) -> Void, _arg:AnyInterface,
			_seq:GoUIntptr):Void {
		_stopTimer(_t);
		_t._when = _when;
		_t._period = _period;
		_t._f = _f;
		_t._arg = _arg;
		_t._seq = _seq;
		_startTimer(_t);
	}

	public static function _runtimeNano():GoInt64 {
		final x = ((Sys.time() * 1000000 * 1000) - Date.now().getTimezoneOffset() * 60000000000 : GoInt64);
		return x;
	}

	public static function _now():{_0:GoInt64, _1:GoInt32, _2:GoInt64} {
		final n = _runtimeNano();
		return {_0: n / 1000000000, _1: n % 1000000000, _2: n};
	}

	public static function _initLocal(_localLoc:Dynamic):Void {
		_localLoc._name = ("Local" : GoString);
		final d = new Date(0, 0, 0, 0, 0, 0);
		var offset = d.getTimezoneOffset() * -1;
		offset *= 60;
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
		_localLoc._zone = new Slice(...[{_name: (name : GoString), _offset: offset, _isDST: false}]);
	}
}
