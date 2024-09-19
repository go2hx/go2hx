package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _stopTimer(_0:stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>):Bool {
        final t:Dynamic = _0;
        if ((t._pp : stdgo.GoUIntptr) != (0 : stdgo.GoUIntptr)) {
            final timer:haxe.Timer = t._pp;
            timer.stop();
        };
        final wasActive = t._status == 1;
        t._status = 0;
        return wasActive;
    }
