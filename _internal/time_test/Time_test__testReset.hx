package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function _testReset(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.Error {
        var _t0 = stdgo._internal.time.Time_newTimer.newTimer(((2i64 : stdgo._internal.time.Time_Duration.Duration) * _d : stdgo._internal.time.Time_Duration.Duration));
        stdgo._internal.time.Time_sleep.sleep(_d);
        if (!_t0.reset(((3i64 : stdgo._internal.time.Time_Duration.Duration) * _d : stdgo._internal.time.Time_Duration.Duration))) {
            return stdgo._internal.errors.Errors_new_.new_(("resetting unfired timer returned false" : stdgo.GoString));
        };
        stdgo._internal.time.Time_sleep.sleep(((2i64 : stdgo._internal.time.Time_Duration.Duration) * _d : stdgo._internal.time.Time_Duration.Duration));
        {
            var __select__ = true;
            while (__select__) {
                if (_t0.c != null && _t0.c.__isGet__()) {
                    __select__ = false;
                    {
                        _t0.c.__get__();
                        {
                            return stdgo._internal.errors.Errors_new_.new_(("timer fired early" : stdgo.GoString));
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
        stdgo._internal.time.Time_sleep.sleep(((2i64 : stdgo._internal.time.Time_Duration.Duration) * _d : stdgo._internal.time.Time_Duration.Duration));
        {
            var __select__ = true;
            while (__select__) {
                if (_t0.c != null && _t0.c.__isGet__()) {
                    __select__ = false;
                    {
                        _t0.c.__get__();
                        {};
                    };
                } else {
                    __select__ = false;
                    {
                        return stdgo._internal.errors.Errors_new_.new_(("reset timer did not fire" : stdgo.GoString));
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
        if (_t0.reset((50000000i64 : stdgo._internal.time.Time_Duration.Duration))) {
            return stdgo._internal.errors.Errors_new_.new_(("resetting expired timer returned true" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
