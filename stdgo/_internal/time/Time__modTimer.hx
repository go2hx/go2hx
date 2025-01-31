package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function _modTimer(_t:stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>, _when:stdgo.GoInt64, _period:stdgo.GoInt64, _f:(stdgo.AnyInterface, stdgo.GoUIntptr) -> Void, _arg:stdgo.AnyInterface, _seq:stdgo.GoUIntptr):Void {
        _stopTimer(_t);
        _t._when = _when;
        _t._period = _period;
        _t._f = _f;
        _t._arg = _arg;
        _t._seq = _seq;
        _startTimer(_t);
    }
