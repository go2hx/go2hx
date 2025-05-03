package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.Timer_asInterface) class Timer_static_extension {
    @:keep
    @:tdfield
    static public function reset( _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>, _d:stdgo._internal.time.Time_duration.Duration):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = _t;
        //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L135"
        if ((@:checkr _t ?? throw "null pointer dereference")._r._f == null) {
            //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L136"
            throw stdgo.Go.toInterface(("time: Reset called on uninitialized Timer" : stdgo.GoString));
        };
        var _w = (stdgo._internal.time.Time__when._when(_d) : stdgo.GoInt64);
        //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L139"
        return stdgo._internal.time.Time__resettimer._resetTimer((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._r) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>), _w);
    }
    @:keep
    @:tdfield
    static public function stop( _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_timer.Timer> = _t;
        //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L78"
        if ((@:checkr _t ?? throw "null pointer dereference")._r._f == null) {
            //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L79"
            throw stdgo.Go.toInterface(("time: Stop called on uninitialized Timer" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/time/sleep.go#L81"
        return stdgo._internal.time.Time__stoptimer._stopTimer((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._r) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>));
    }
}
