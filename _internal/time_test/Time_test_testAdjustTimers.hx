package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAdjustTimers(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _rnd:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand> = stdgo._internal.math.rand.Rand_new_.new_(stdgo._internal.math.rand.Rand_newSource.newSource(stdgo._internal.time.Time_now.now().unixNano()));
        var _timers = (new stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>>((100 : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>>);
        var _states = (new stdgo.Slice<stdgo.GoInt>((_timers.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        var _indices = _rnd.perm((_timers.length));
        while ((_indices.length) != ((0 : stdgo.GoInt))) {
            var _ii:stdgo.GoInt = _rnd.intn((_indices.length));
            var _i:stdgo.GoInt = _indices[(_ii : stdgo.GoInt)];
            var _timer:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = _timers[(_i : stdgo.GoInt)];
            var _state:stdgo.GoInt = _states[(_i : stdgo.GoInt)];
            _states[(_i : stdgo.GoInt)]++;
            {
                final __value__ = _state;
                if (__value__ == ((0 : stdgo.GoInt))) {
                    _timers[(_i : stdgo.GoInt)] = stdgo._internal.time.Time_newTimer.newTimer((0i64 : stdgo._internal.time.Time_Duration.Duration));
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    _timer.c.__get__();
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    if (_timer.reset((60000000000i64 : stdgo._internal.time.Time_Duration.Duration))) {
                        throw stdgo.Go.toInterface(("shouldn\'t be active (1)" : stdgo.GoString));
                    };
                } else if (__value__ == ((4 : stdgo.GoInt))) {
                    if (_timer.reset((180000000000i64 : stdgo._internal.time.Time_Duration.Duration))) {
                        throw stdgo.Go.toInterface(("shouldn\'t be active (3)" : stdgo.GoString));
                    };
                } else if (__value__ == ((6 : stdgo.GoInt))) {
                    if (_timer.reset((120000000000i64 : stdgo._internal.time.Time_Duration.Duration))) {
                        throw stdgo.Go.toInterface(("shouldn\'t be active (2)" : stdgo.GoString));
                    };
                } else if (__value__ == ((3 : stdgo.GoInt)) || __value__ == ((5 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                    if (!_timer.stop()) {
                        _t.logf(("timer %d state %d Stop returned false" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_state));
                        _timer.c.__get__();
                    };
                } else if (__value__ == ((8 : stdgo.GoInt))) {
                    if (_timer.reset((0i64 : stdgo._internal.time.Time_Duration.Duration))) {
                        _t.fatal(stdgo.Go.toInterface(("timer.Reset returned true" : stdgo.GoString)));
                    };
                } else if (__value__ == ((9 : stdgo.GoInt))) {
                    var _now = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                    _timer.c.__get__();
                    var _dur = (stdgo._internal.time.Time_since.since(_now?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                    if ((_dur > (750000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                        _t.errorf(("timer %d took %v to complete" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_dur)));
                    };
                } else if (__value__ == ((10 : stdgo.GoInt))) {
                    _indices[(_ii : stdgo.GoInt)] = _indices[((_indices.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                    _indices = (_indices.__slice__(0, ((_indices.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                };
            };
        };
    }
