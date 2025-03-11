package stdgo._internal.math.rand;
@:structInit @:using(stdgo._internal.math.rand.Rand_t_rngsource_static_extension.T_rngSource_static_extension) class T_rngSource {
    public var _tap : stdgo.GoInt = 0;
    public var _feed : stdgo.GoInt = 0;
    public var _vec : stdgo.GoArray<stdgo.GoInt64> = new stdgo.GoArray<stdgo.GoInt64>(607, 607).__setNumber64__();
    public function new(?_tap:stdgo.GoInt, ?_feed:stdgo.GoInt, ?_vec:stdgo.GoArray<stdgo.GoInt64>) {
        if (_tap != null) this._tap = _tap;
        if (_feed != null) this._feed = _feed;
        if (_vec != null) this._vec = _vec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_rngSource(_tap, _feed, _vec);
    }
}
