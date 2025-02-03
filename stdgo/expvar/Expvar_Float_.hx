package stdgo.expvar;
@:structInit @:using(stdgo.expvar.Expvar.Float__static_extension) abstract Float_(stdgo._internal.expvar.Expvar_Float_.Float_) from stdgo._internal.expvar.Expvar_Float_.Float_ to stdgo._internal.expvar.Expvar_Float_.Float_ {
    public var _f(get, set) : stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64;
    function get__f():stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 return this._f;
    function set__f(v:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64):stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64 {
        this._f = v;
        return v;
    }
    public function new(?_f:stdgo._internal.sync.atomic_.Atomic__Uint64.Uint64) this = new stdgo._internal.expvar.Expvar_Float_.Float_(_f);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
