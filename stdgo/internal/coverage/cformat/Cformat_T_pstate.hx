package stdgo.internal.coverage.cformat;
@:structInit @:using(stdgo.internal.coverage.cformat.Cformat.T_pstate_static_extension) abstract T_pstate(stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate) from stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate to stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate {
    public var _funcs(get, set) : Array<T_fnfile>;
    function get__funcs():Array<T_fnfile> return [for (i in this._funcs) i];
    function set__funcs(v:Array<T_fnfile>):Array<T_fnfile> {
        this._funcs = ([for (i in v) i] : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile>);
        return v;
    }
    public var _funcTable(get, set) : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32>;
    function get__funcTable():stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32> return this._funcTable;
    function set__funcTable(v:stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32>):stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32> {
        this._funcTable = (v : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32>);
        return v;
    }
    public var _unitTable(get, set) : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32>;
    function get__unitTable():stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32> return this._unitTable;
    function set__unitTable(v:stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32>):stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32> {
        this._unitTable = (v : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32>);
        return v;
    }
    public function new(?_funcs:Array<T_fnfile>, ?_funcTable:stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32>, ?_unitTable:stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32>) this = new stdgo._internal.internal.coverage.cformat.Cformat_T_pstate.T_pstate(([for (i in _funcs) i] : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile>), (_funcTable : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32>), (_unitTable : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
