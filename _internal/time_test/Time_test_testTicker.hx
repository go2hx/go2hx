package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTicker(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _baseCount = (10 : stdgo.GoInt);
        var _baseDelta = (20000000i64 : stdgo._internal.time.Time_Duration.Duration);
        if (false) {
            _baseCount = (6 : stdgo.GoInt);
            _baseDelta = (100000000i64 : stdgo._internal.time.Time_Duration.Duration);
        };
        var _errs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _logErrs = (function():Void {
            for (__2 => _e in _errs) {
                _t.log(stdgo.Go.toInterface(_e));
            };
        } : () -> Void);
        for (__2 => _test in (new stdgo.Slice<_internal.time_test.Time_test_T__struct_9.T__struct_9>(2, 2, ...[({ _count : _baseCount, _delta : _baseDelta } : _internal.time_test.Time_test_T__struct_9.T__struct_9), ({ _count : (8 : stdgo.GoInt), _delta : (1000000000i64 : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_9.T__struct_9)].concat([for (i in 2 ... (2 > 2 ? 2 : 2 : stdgo.GoInt).toBasic()) ({ _count : (0 : stdgo.GoInt), _delta : ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_Duration.Duration) } : _internal.time_test.Time_test_T__struct_9.T__struct_9)])) : stdgo.Slice<_internal.time_test.Time_test_T__struct_9.T__struct_9>)) {
            var __0 = (_test._count : stdgo.GoInt), __1 = (_test._delta : stdgo._internal.time.Time_Duration.Duration);
var _delta = __1, _count = __0;
            var _ticker = stdgo._internal.time.Time_newTicker.newTicker(_delta);
            var _t0 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_count / (2 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                    _ticker.c.__get__();
                });
            };
            _ticker.reset((_delta * (2i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration));
            {
                var _i = (_count / (2 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_i < _count : Bool), _i++, {
                    _ticker.c.__get__();
                });
            };
            _ticker.stop();
            var _t1 = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
            var _dt = (_t1.sub(_t0?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
            var _target = (((3i64 : stdgo._internal.time.Time_Duration.Duration) * _delta : stdgo._internal.time.Time_Duration.Duration) * ((_count / (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
            var _slop = ((_target * (3i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration) / (10i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
            if (((_dt < (_target - _slop : stdgo._internal.time.Time_Duration.Duration) : Bool) || (_dt > (_target + _slop : stdgo._internal.time.Time_Duration.Duration) : Bool) : Bool)) {
                _errs = (_errs.__append__(stdgo._internal.fmt.Fmt_sprintf.sprintf(("%d %s ticks then %d %s ticks took %s, expected [%s,%s]" : stdgo.GoString), stdgo.Go.toInterface((_count / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface(_delta)), stdgo.Go.toInterface((_count / (2 : stdgo.GoInt) : stdgo.GoInt)), stdgo.Go.toInterface(stdgo.Go.asInterface((_delta * (2i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface(_dt)), stdgo.Go.toInterface(stdgo.Go.asInterface((_target - _slop : stdgo._internal.time.Time_Duration.Duration))), stdgo.Go.toInterface(stdgo.Go.asInterface((_target + _slop : stdgo._internal.time.Time_Duration.Duration))))?.__copy__()));
                if ((_dt > (_target + _slop : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                    stdgo._internal.time.Time_sleep.sleep((500000000i64 : stdgo._internal.time.Time_Duration.Duration));
                };
                continue;
            };
            stdgo._internal.time.Time_sleep.sleep(((2i64 : stdgo._internal.time.Time_Duration.Duration) * _delta : stdgo._internal.time.Time_Duration.Duration));
            {
                var __select__ = true;
                while (__select__) {
                    if (_ticker.c != null && _ticker.c.__isGet__()) {
                        __select__ = false;
                        {
                            _ticker.c.__get__();
                            {
                                _errs = (_errs.__append__(("Ticker did not shut down" : stdgo.GoString)));
                                continue;
                            };
                        };
                    } else {
                        __select__ = false;
                        {};
                    };
                    #if !js Sys.sleep(0.01) #else null #end;
                    stdgo._internal.internal.Async.tick();
                };
            };
            if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
                _t.logf(("saw %d errors, ignoring to avoid flakiness" : stdgo.GoString), stdgo.Go.toInterface((_errs.length)));
                _logErrs();
            };
            return;
        };
        _t.errorf(("saw %d errors" : stdgo.GoString), stdgo.Go.toInterface((_errs.length)));
        _logErrs();
    }
