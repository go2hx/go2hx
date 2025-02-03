package stdgo.internal.fuzz;
@:structInit @:using(stdgo.internal.fuzz.Fuzz.T_mutator_static_extension) abstract T_mutator(stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator) from stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator to stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator {
    public var _r(get, set) : T_mutatorRand;
    function get__r():T_mutatorRand return this._r;
    function set__r(v:T_mutatorRand):T_mutatorRand {
        this._r = v;
        return v;
    }
    public var _scratch(get, set) : Array<std.UInt>;
    function get__scratch():Array<std.UInt> return [for (i in this._scratch) i];
    function set__scratch(v:Array<std.UInt>):Array<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_r:T_mutatorRand, ?_scratch:Array<std.UInt>) this = new stdgo._internal.internal.fuzz.Fuzz_T_mutator.T_mutator(_r, ([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
