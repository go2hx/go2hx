package stdgo._internal.internal.coverage.cformat;
@:structInit @:using(stdgo._internal.internal.coverage.cformat.Cformat_T_extcu_static_extension.T_extcu_static_extension) class T_extcu {
    public var _fnfid : stdgo.GoUInt32 = 0;
    @:embedded
    public var coverableUnit : stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit = ({} : stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit);
    public function new(?_fnfid:stdgo.GoUInt32, ?coverableUnit:stdgo._internal.internal.coverage.Coverage_CoverableUnit.CoverableUnit) {
        if (_fnfid != null) this._fnfid = _fnfid;
        if (coverableUnit != null) this.coverableUnit = coverableUnit;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_extcu(_fnfid, coverableUnit);
    }
}
