package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
function _startTimer(_0:stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>):Void {
        final t = _0;
        t._status = 1;
        var diff = (t._when - stdgo._internal.time.Time__runtimeNano._runtimeNano()) / (1000 * 1000);
        if (diff > 1 << 31 - 1) return;
        if (diff < 0) diff = 0;
        final d = (diff : stdgo.GoInt).toBasic() + 1;
        final timer = new haxe.Timer(d);
        timer.run = () -> {
            timer.stop();
            t._status = 0;
            if (t._period != (0 : stdgo.GoInt64)) {
                t._when += t._period;
                _startTimer(t);
            };
            stdgo.Go.routine(() -> t._f(t._arg, 0));
        };
        t._pp = (timer : stdgo.GoUIntptr);
    }