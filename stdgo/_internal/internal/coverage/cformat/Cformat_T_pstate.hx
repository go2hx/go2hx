package stdgo._internal.internal.coverage.cformat;
import stdgo._internal.internal.coverage.cmerge.Cmerge;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.sort.Sort;
import stdgo._internal.text.tabwriter.Tabwriter;
@:structInit @:using(stdgo._internal.internal.coverage.cformat.Cformat_T_pstate_static_extension.T_pstate_static_extension) class T_pstate {
    public var _funcs : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile> = (null : stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile>);
    public var _funcTable : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32>));
    public var _unitTable : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32> = (({
        final x:stdgo.GoMap.GoObjectMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32> = null;
        cast x;
    } : stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32>));
    public function new(?_funcs:stdgo.Slice<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile>, ?_funcTable:stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_fnfile.T_fnfile, stdgo.GoUInt32>, ?_unitTable:stdgo.GoMap<stdgo._internal.internal.coverage.cformat.Cformat_T_extcu.T_extcu, stdgo.GoUInt32>) {
        if (_funcs != null) this._funcs = _funcs;
        if (_funcTable != null) this._funcTable = _funcTable;
        if (_unitTable != null) this._unitTable = _unitTable;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_pstate(_funcs, _funcTable, _unitTable);
    }
}
