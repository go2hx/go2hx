package go.time;

function _parseRFC3339() {
	return {_0: stdgo._internal.time.Time_now.now(), _1: true};
}

function sleep(_d) {
	final seconds = _d.toFloat() / 1000000000;
	@:define("(sys || hxnodejs)") {
		var ticks = std.Math.floor(seconds * 100);
		while (--ticks > 0) {
			stdgo._internal.internal.Async.tick();
			std.Sys.sleep(0.01);
		}
	}
}

function forceUSPacificForTesting() {}

function _stopTimer(_0) {
	final t = _0;
	if (t._pp != new stdgo.GoUIntptr(0)) {
		final timer:haxe.Timer = t._pp.toDynamic();
		timer.stop();
	}
	final wasActive = t._status == 1;
	t._status = 0;
	return wasActive;
}

function _startTimer(_0) {
	final t:Dynamic = _0;
	t._status = 1;
	var diff = (t._when - stdgo._internal.time.Time__runtimenano._runtimeNano()) / (1000 * 1000);
	if (diff > 1 << 31 - 1)
		return;
	if (diff < 0)
		diff = 0;
	final d = (diff : stdgo.GoInt).toBasic() + 1;
	final timer = new haxe.Timer(d);
	timer.run = () -> {
		timer.stop();
		t._status = 0;
		if (t._period != (0 : stdgo.GoInt64)) {
			t._when += t._period;
			_startTimer(t);
		}
		stdgo.Go.routine(() -> t._f(t._arg, new stdgo.GoUIntptr(0)));
	};
	t._pp = new stdgo.GoUIntptr(timer);
}

function _resetTimer(_0, _1) {
	final t = _0;
	final when = _1;
	final wasActive = t._status == 1;
	return wasActive;
}

function _modTimer(_t:Dynamic, _when, _period, _f, _arg, _seq) {
	_stopTimer(_t);
	_t._when = _when;
	_t._period = _period;
	_t._f = _f;
	_t._arg = _arg;
	_t._seq = _seq;
	_startTimer(_t);
}

function _runtimeNano() {
	return (((@:define("(sys || hxnodejs)", haxe.Timer.stamp()) std.Sys.time()) * 1000000 * 1000)
		- std.Date.now().getTimezoneOffset() * 60000000000 : stdgo.GoInt64);
}

function _now() {
	final n = stdgo._internal.time.Time__runtimenano._runtimeNano();
	return {_0: n / 1000000000, _1: n % 1000000000, _2: n};
}

function _initLocal() {
	stdgo._internal.time.Time__localloc._localLoc._name = ("Local" : stdgo.GoString);
	final d = new std.Date(0, 0, 0, 0, 0, 0);
	var offset = d.getTimezoneOffset() * -1;
	offset *= 60;
	var name = "UTC";
	if (offset < 0) {
		name += "-";
		offset *= -1;
	} else {
		name += "+";
	}
	name += std.Std.string(offset / 60);
	final min = offset % 60;
	if (min != 0) {
		name += ":" + std.Std.string(min);
	}
	stdgo._internal.time.Time__localloc._localLoc._zone = new stdgo.Slice<stdgo._internal.time.Time_t_zone.T_zone>(1, 1,
		...[{_name: (name : stdgo.GoString), _offset: offset, _isDST: false}]);
}
