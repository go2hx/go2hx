package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testTimerModifiedEarlier(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if (false) {
                stdgo._internal.internal.testenv.Testenv_skipFlaky.skipFlaky(stdgo.Go.asInterface(_t), (50470 : stdgo.GoInt));
            };
            var _past = (stdgo._internal.time.Time_until.until(stdgo._internal.time.Time_unix.unix((0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
            var _count = (1000 : stdgo.GoInt);
            var _fail = (0 : stdgo.GoInt);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < _count : Bool), _i++, {
                    var _timer = stdgo._internal.time.Time_newTimer.newTimer((3600000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                    {
                        var _j = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_j < (10 : stdgo.GoInt) : Bool), _j++, {
                            if (!_timer.stop()) {
                                _timer.c.__get__();
                            };
                            _timer.reset(_past);
                        });
                    };
                    var _deadline = stdgo._internal.time.Time_newTimer.newTimer((10000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                    __deferstack__.unshift(() -> _deadline.stop());
                    var _now = (stdgo._internal.time.Time_now.now()?.__copy__() : stdgo._internal.time.Time_Time.Time);
                    {
                        var __select__ = true;
                        while (__select__) {
                            if (_timer.c != null && _timer.c.__isGet__()) {
                                __select__ = false;
                                {
                                    _timer.c.__get__();
                                    {
                                        {
                                            var _since = (stdgo._internal.time.Time_since.since(_now?.__copy__()) : stdgo._internal.time.Time_Duration.Duration);
                                            if ((_since > (8000000000i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
                                                _t.errorf(("timer took too long (%v)" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_since)));
                                                _fail++;
                                            };
                                        };
                                    };
                                };
                            } else if (_deadline.c != null && _deadline.c.__isGet__()) {
                                __select__ = false;
                                {
                                    _deadline.c.__get__();
                                    {
                                        _t.error(stdgo.Go.toInterface(("deadline expired" : stdgo.GoString)));
                                    };
                                };
                            };
                            #if !js Sys.sleep(0.01) #else null #end;
                            stdgo._internal.internal.Async.tick();
                        };
                    };
                });
            };
            if ((_fail > (0 : stdgo.GoInt) : Bool)) {
                _t.errorf(("%d failures" : stdgo.GoString), stdgo.Go.toInterface(_fail));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }
