package stdgo._internal.time;
function _modTimer(_t:stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>, _when:stdgo.GoInt64, _period:stdgo.GoInt64, _f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, _arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        _stopTimer(_t);
        _t._when = _when;
        _t._period = _period;
        _t._f = _f;
        _t._arg = _arg;
        _t._seq = _seq;
        _startTimer(_t);
    }
