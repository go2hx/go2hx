package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_t_durationorcountflag_static_extension.T_durationOrCountFlag_static_extension) class T_durationOrCountFlag {
    public var _d : stdgo._internal.time.Time_duration.Duration = ((0 : stdgo.GoInt64) : stdgo._internal.time.Time_duration.Duration);
    public var _n : stdgo.GoInt = 0;
    public var _allowZero : Bool = false;
    public function new(?_d:stdgo._internal.time.Time_duration.Duration, ?_n:stdgo.GoInt, ?_allowZero:Bool) {
        if (_d != null) this._d = _d;
        if (_n != null) this._n = _n;
        if (_allowZero != null) this._allowZero = _allowZero;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_durationOrCountFlag(_d, _n, _allowZero);
    }
}
