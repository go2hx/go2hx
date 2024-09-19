package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleNewTicker():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var _ticker = stdgo._internal.time.Time_newTicker.newTicker((1000000000i64 : stdgo._internal.time.Time_Duration.Duration));
            __deferstack__.unshift(() -> _ticker.stop());
            var _done = (new stdgo.Chan<Bool>(0, () -> false) : stdgo.Chan<Bool>);
            stdgo.Go.routine(() -> {
                var a = function():Void {
                    var __deferstack__:Array<Void -> Void> = [];
                    try {
                        stdgo._internal.time.Time_sleep.sleep((10000000000i64 : stdgo._internal.time.Time_Duration.Duration));
                        _done.__send__(true);
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
                };
                a();
            });
            while (true) {
                {
                    var __select__ = true;
                    while (__select__) {
                        if (_done != null && _done.__isGet__()) {
                            __select__ = false;
                            {
                                _done.__get__();
                                {
                                    stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Done!" : stdgo.GoString)));
                                    {
                                        for (defer in __deferstack__) {
                                            defer();
                                        };
                                        return;
                                    };
                                };
                            };
                        } else if (_ticker.c != null && _ticker.c.__isGet__()) {
                            __select__ = false;
                            {
                                var _t = _ticker.c.__get__();
                                {
                                    stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("Current time: " : stdgo.GoString)), stdgo.Go.toInterface(stdgo.Go.asInterface(_t)));
                                };
                            };
                        };
                        #if !js Sys.sleep(0.01) #else null #end;
                        stdgo._internal.internal.Async.tick();
                    };
                };
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
