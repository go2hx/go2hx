package stdgo._internal.time;
function newTicker(_d:stdgo._internal.time.Time_Duration.Duration):stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker> {
        if ((_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            throw stdgo.Go.toInterface(("non-positive interval for NewTicker" : stdgo.GoString));
        };
        var _c = (new stdgo.Chan<stdgo._internal.time.Time_Time.Time>((1 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.time.Time_Time.Time)) : stdgo.Chan<stdgo._internal.time.Time_Time.Time>);
        var _t = (stdgo.Go.setRef(({ c : _c, _r : ({ _when : stdgo._internal.time.Time__when._when(_d), _period : (_d : stdgo.GoInt64), _f : stdgo._internal.time.Time__sendTime._sendTime, _arg : stdgo.Go.toInterface(_c) } : stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer) } : stdgo._internal.time.Time_Ticker.Ticker)) : stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker>);
        stdgo._internal.time.Time__startTimer._startTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>));
        return _t;
    }
