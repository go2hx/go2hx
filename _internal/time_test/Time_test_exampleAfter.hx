package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function exampleAfter():Void {
        {
            var __select__ = true;
            while (__select__) {
                if (_internal.time_test.Time_test__c._c != null && _internal.time_test.Time_test__c._c.__isGet__()) {
                    __select__ = false;
                    {
                        var _m = _internal.time_test.Time_test__c._c.__get__();
                        {
                            _internal.time_test.Time_test__handle._handle(_m);
                        };
                    };
                } else if (stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_Duration.Duration)) != null && stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((10000000000i64 : stdgo._internal.time.Time_Duration.Duration)).__get__();
                        {
                            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("timed out" : stdgo.GoString)));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
