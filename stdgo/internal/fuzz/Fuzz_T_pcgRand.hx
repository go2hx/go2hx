package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_pcgRand_static_extension) abstract T_pcgRand(stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand) from stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand to stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand {
    public var _noCopy(get, set) : T_noCopy;
    function get__noCopy():T_noCopy return this._noCopy;
    function set__noCopy(v:T_noCopy):T_noCopy {
        this._noCopy = v;
        return v;
    }
    public var _state(get, set) : haxe.UInt64;
    function get__state():haxe.UInt64 return this._state;
    function set__state(v:haxe.UInt64):haxe.UInt64 {
        this._state = (v : stdgo.GoUInt64);
        return v;
    }
    public var _inc(get, set) : haxe.UInt64;
    function get__inc():haxe.UInt64 return this._inc;
    function set__inc(v:haxe.UInt64):haxe.UInt64 {
        this._inc = (v : stdgo.GoUInt64);
        return v;
    }
    public function new(?_noCopy:T_noCopy, ?_state:haxe.UInt64, ?_inc:haxe.UInt64) this = new stdgo._internal.internal.fuzz.Fuzz_T_pcgRand.T_pcgRand(_noCopy, (_state : stdgo.GoUInt64), (_inc : stdgo.GoUInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
