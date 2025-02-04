package stdgo._internal.time;
function afterFunc(_d:stdgo._internal.time.Time_duration.Duration, _f:() -> Void):stdgo.Ref<stdgo._internal.time.Time_timer.Timer> {
        var _t = (stdgo.Go.setRef(({ _r : ({ _when : stdgo._internal.time.Time__when._when(_d), _f : stdgo._internal.time.Time__gofunc._goFunc, _arg : stdgo.Go.toInterface(_f) } : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer) } : stdgo._internal.time.Time_timer.Timer)) : stdgo.Ref<stdgo._internal.time.Time_timer.Timer>);
        stdgo._internal.time.Time__starttimer._startTimer((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._r) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>));
        return _t;
    }
