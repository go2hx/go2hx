package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.Ticker_asInterface) class Ticker_static_extension {
    @:keep
    static public function reset( _t:stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker>, _d:stdgo._internal.time.Time_Duration.Duration):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker> = _t;
        if ((_d <= (0i64 : stdgo._internal.time.Time_Duration.Duration) : Bool)) {
            throw stdgo.Go.toInterface(("non-positive interval for Ticker.Reset" : stdgo.GoString));
        };
        if (_t._r._f == null) {
            throw stdgo.Go.toInterface(("time: Reset called on uninitialized Ticker" : stdgo.GoString));
        };
        stdgo._internal.time.Time__modTimer._modTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>), stdgo._internal.time.Time__when._when(_d), (_d : stdgo.GoInt64), _t._r._f, _t._r._arg, _t._r._seq);
    }
    @:keep
    static public function stop( _t:stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_Ticker.Ticker> = _t;
        stdgo._internal.time.Time__stopTimer._stopTimer((stdgo.Go.setRef(_t._r) : stdgo.Ref<stdgo._internal.time.Time_T_runtimeTimer.T_runtimeTimer>));
    }
}
