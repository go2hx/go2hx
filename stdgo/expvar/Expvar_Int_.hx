package stdgo.expvar;
@:structInit @:using(stdgo.expvar.Expvar.Int__static_extension) abstract Int_(stdgo._internal.expvar.Expvar_Int_.Int_) from stdgo._internal.expvar.Expvar_Int_.Int_ to stdgo._internal.expvar.Expvar_Int_.Int_ {
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_i:haxe.Int64) this = new stdgo._internal.expvar.Expvar_Int_.Int_((_i : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
