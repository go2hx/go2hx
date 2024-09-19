package stdgo._internal.time;
import stdgo._internal.unsafe.Unsafe;
@:keep @:allow(stdgo._internal.time.Time.Timer_asInterface) class Timer_static_extension {
    @:keep
    static public function reset( _t:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>, _d:stdgo._internal.time.Time_Duration.Duration):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = _t;
        if (_t._r._f == null) {
            throw stdgo.Go.toInterface(("time: Reset called on uninitialized Timer" : stdgo.GoString));
        };
        var _w = (stdgo._internal.time.Time__when._when(_d) : stdgo.GoInt64);
        return stdgo._internal.time.Time__resetTimer._resetTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>), _w);
    }
    @:keep
    static public function stop( _t:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Timer.Timer> = _t;
        if (_t._r._f == null) {
            throw stdgo.Go.toInterface(("time: Stop called on uninitialized Timer" : stdgo.GoString));
        };
        return stdgo._internal.time.Time__stopTimer._stopTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>));
    }
}
