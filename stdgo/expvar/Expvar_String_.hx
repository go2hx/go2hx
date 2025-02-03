package stdgo.expvar;
@:structInit @:using(stdgo.expvar.Expvar.String__static_extension) abstract String_(stdgo._internal.expvar.Expvar_String_.String_) from stdgo._internal.expvar.Expvar_String_.String_ to stdgo._internal.expvar.Expvar_String_.String_ {
    public var _s(get, set) : stdgo._internal.sync.atomic_.Atomic__Value.Value;
    function get__s():stdgo._internal.sync.atomic_.Atomic__Value.Value return this._s;
    function set__s(v:stdgo._internal.sync.atomic_.Atomic__Value.Value):stdgo._internal.sync.atomic_.Atomic__Value.Value {
        this._s = v;
        return v;
    }
    public function new(?_s:stdgo._internal.sync.atomic_.Atomic__Value.Value) this = new stdgo._internal.expvar.Expvar_String_.String_(_s);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
