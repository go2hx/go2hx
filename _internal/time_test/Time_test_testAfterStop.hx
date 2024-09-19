package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAfterStop(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _errs:stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
        var _logErrs = (function():Void {
            for (__2 => _e in _errs) {
                _t.log(stdgo.Go.toInterface(_e));
            };
        } : () -> Void);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (5 : stdgo.GoInt) : Bool), _i++, {
                stdgo._internal.time.Time_afterFunc.afterFunc((100000000i64 : stdgo._internal.time.Time_Duration.Duration), function():Void {});
                var _t0 = stdgo._internal.time.Time_newTimer.newTimer((50000000i64 : stdgo._internal.time.Time_Duration.Duration));
                var _c1 = (new stdgo.Chan<Bool>((1 : stdgo.GoInt).toBasic(), () -> false) : stdgo.Chan<Bool>);
                var _t1 = stdgo._internal.time.Time_afterFunc.afterFunc((150000000i64 : stdgo._internal.time.Time_Duration.Duration), function():Void {
                    _c1.__send__(true);
                });
                var _c2 = stdgo._internal.time.Time_after.after((200000000i64 : stdgo._internal.time.Time_Duration.Duration));
                if (!_t0.stop()) {
                    _errs = (_errs.__append__(("failed to stop event 0" : stdgo.GoString)));
                    continue;
                };
                if (!_t1.stop()) {
                    _errs = (_errs.__append__(("failed to stop event 1" : stdgo.GoString)));
                    continue;
                };
                _c2.__get__();
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_t0.c != null && _t0.c.__isGet__()) {
                            __select__ = false;
                            {
                                _t0.c.__get__();
                                {
                                    _errs = (_errs.__append__(("event 0 was not stopped" : stdgo.GoString)));
                                    continue;
                                };
                            };
                        } else if (_c1 != null && _c1.__isGet__()) {
                            __select__ = false;
                            {
                                _c1.__get__();
                                {
                                    _errs = (_errs.__append__(("event 1 was not stopped" : stdgo.GoString)));
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
                if (_t1.stop()) {
                    _errs = (_errs.__append__(("Stop returned true twice" : stdgo.GoString)));
                    continue;
                };
                if (((_errs.length) > (0 : stdgo.GoInt) : Bool)) {
                    _t.logf(("saw %d errors, ignoring to avoid flakiness" : stdgo.GoString), stdgo.Go.toInterface((_errs.length)));
                    _logErrs();
                };
                return;
            });
        };
        _t.errorf(("saw %d errors" : stdgo.GoString), stdgo.Go.toInterface((_errs.length)));
        _logErrs();
    }
