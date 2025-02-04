package stdgo._internal.expvar;
@:structInit @:using(stdgo._internal.expvar.Expvar_int__static_extension.Int__static_extension) class Int_ {
    public var _i : stdgo.GoInt64 = 0;
    public function new(?_i:stdgo.GoInt64) {
        if (_i != null) this._i = _i;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Int_(_i);
    }
}
