package stdgo._internal.testing;
@:structInit @:using(stdgo._internal.testing.Testing_pb_static_extension.PB_static_extension) class PB {
    public var _globalN : stdgo.Pointer<stdgo.GoUInt64> = (null : stdgo.Pointer<stdgo.GoUInt64>);
    public var _grain : stdgo.GoUInt64 = 0;
    public var _cache : stdgo.GoUInt64 = 0;
    public var _bN : stdgo.GoUInt64 = 0;
    public function new(?_globalN:stdgo.Pointer<stdgo.GoUInt64>, ?_grain:stdgo.GoUInt64, ?_cache:stdgo.GoUInt64, ?_bN:stdgo.GoUInt64) {
        if (_globalN != null) this._globalN = _globalN;
        if (_grain != null) this._grain = _grain;
        if (_cache != null) this._cache = _cache;
        if (_bN != null) this._bN = _bN;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new PB(_globalN, _grain, _cache, _bN);
    }
}
