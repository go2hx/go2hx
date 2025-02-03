package stdgo.internal.coverage.cformat;
@:structInit @:using(stdgo.internal.coverage.cformat.Cformat.T_extcu_static_extension) abstract T_extcu(stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu) from stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu to stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu {
    public var _fnfid(get, set) : std.UInt;
    function get__fnfid():std.UInt return this._fnfid;
    function set__fnfid(v:std.UInt):std.UInt {
        this._fnfid = (v : stdgo.GoUInt32);
        return v;
    }
    public var coverableUnit(get, set) : stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit;
    function get_coverableUnit():stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit return this.coverableUnit;
    function set_coverableUnit(v:stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit):stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit {
        this.coverableUnit = v;
        return v;
    }
    public function new(?_fnfid:std.UInt, ?coverableUnit:stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit) this = new stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu((_fnfid : stdgo.GoUInt32), coverableUnit);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
