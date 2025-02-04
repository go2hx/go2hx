package stdgo._internal.time;
@:keep @:allow(stdgo._internal.time.Time.Ticker_asInterface) class Ticker_static_extension {
    @:keep
    @:tdfield
    static public function reset( _t:stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker>, _d:stdgo._internal.time.Time_duration.Duration):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker> = _t;
        if ((_d <= (0i64 : stdgo._internal.time.Time_duration.Duration) : Bool)) {
            throw stdgo.Go.toInterface(("non-positive interval for Ticker.Reset" : stdgo.GoString));
        };
        if ((@:checkr _t ?? throw "null pointer dereference")._r._f == null) {
            throw stdgo.Go.toInterface(("time: Reset called on uninitialized Ticker" : stdgo.GoString));
        };
        stdgo._internal.time.Time__modtimer._modTimer((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._r) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>), stdgo._internal.time.Time__when._when(_d), (_d : stdgo.GoInt64), (@:checkr _t ?? throw "null pointer dereference")._r._f, (@:checkr _t ?? throw "null pointer dereference")._r._arg, (@:checkr _t ?? throw "null pointer dereference")._r._seq);
    }
    @:keep
    @:tdfield
    static public function stop( _t:stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.time.Time_ticker.Ticker> = _t;
        stdgo._internal.time.Time__stoptimer._stopTimer((stdgo.Go.setRef((@:checkr _t ?? throw "null pointer dereference")._r) : stdgo.Ref<stdgo._internal.time.Time_t_runtimetimer.T_runtimeTimer>));
    }
}
