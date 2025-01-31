package stdgo._internal.time;
import stdgo._internal.errors.Errors;
import stdgo._internal.syscall.Syscall;
import stdgo._internal.syscall.js.Js;
import stdgo._internal.internal.itoa.Itoa;
import stdgo._internal.runtime.Runtime;
function afterFunc(_d:stdgo._internal.time.Time_Duration.Duration, _f:() -> Void):stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> {
        var _t = (stdgo.Go.setRef(({ _r : ({ _when : stdgo._internal.time.Time__when._when(_d), _f : stdgo._internal.time.Time__goFunc._goFunc, _arg : stdgo.Go.toInterface(_f) } : stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer) } : stdgo._internal.time.Time_Timer.Timer)) : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        stdgo._internal.time.Time__startTimer._startTimer((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._r) : stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>));
        return _t;
    }
