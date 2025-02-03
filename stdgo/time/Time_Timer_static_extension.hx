package stdgo.time;
class Timer_static_extension {
    static public function reset(_t:Timer, _d:Duration):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        return stdgo._internal.time.Time_Timer_static_extension.Timer_static_extension.reset(_t, _d);
    }
    static public function stop(_t:Timer):Bool {
        final _t = (_t : stdgo.Ref<stdgo._internal.time.Time_Timer.Timer>);
        return stdgo._internal.time.Time_Timer_static_extension.Timer_static_extension.stop(_t);
    }
}
