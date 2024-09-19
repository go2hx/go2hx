package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testAfterQueuing(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _err = (stdgo._internal.errors.Errors_new_.new_(("!=nil" : stdgo.GoString)) : stdgo.Error);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (5 : stdgo.GoInt) : Bool) && (_err != null) : Bool), _i++, {
                var _delta = ((((20 : stdgo.GoInt) + (_i * (50 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) : stdgo._internal.time.Time_Duration.Duration) * (1000000i64 : stdgo._internal.time.Time_Duration.Duration) : stdgo._internal.time.Time_Duration.Duration);
                {
                    _err = _internal.time_test.Time_test__testAfterQueuing._testAfterQueuing(_delta);
                    if (_err != null) {
                        _t.logf(("attempt %v failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    };
                };
            });
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
    }
