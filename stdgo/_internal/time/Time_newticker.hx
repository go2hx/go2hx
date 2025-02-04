package stdgo._internal.time;
function newTicker(_d:stdgo._internal.time.Time_duration.Duration):stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker> {
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            throw stdgo.Go.toInterface(("non-positive interval for NewTicker" : stdgo.GoString));
        };
        var _c = (new stdgo.Chan<stdgo._internal.time.Time_time.Time>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.time.Time_time.Time)) : stdgo.Chan<stdgo._internal.time.Time_time.Time>);
        var _t = (stdgo.Go.setRef(({ c : _c, _r : ({ _when : stdgo._internal.time.Time__when._when(_d), _period : (_d : stdgo.GoInt64), _f : stdgo._internal.time.Time__sendtime._sendTime, _arg : stdgo.Go.toInterface(_c) } : stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer) } : stdgo._internal.time.Time_ticker.Ticker)) : stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker>);
        stdgo._internal.time.Time__starttimer._startTimer((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._r) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>));
        return _t;
    }
