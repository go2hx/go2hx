package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _resetTimer(_0:stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>, _1:stdgo.GoInt64):Bool {
        final t = _0;
        final when = _1;
        final wasActive = t._status == 1;
        return wasActive;
    }
