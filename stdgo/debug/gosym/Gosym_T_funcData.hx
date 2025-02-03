package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.T_funcData_static_extension) abstract T_funcData(stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData) from stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData to stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData {
    public var _t(get, set) : LineTable;
    function get__t():LineTable return this._t;
    function set__t(v:LineTable):LineTable {
        this._t = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return v;
    }
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_t:LineTable, ?_data:Array<std.UInt>) this = new stdgo._internal.debug.gosym.Gosym_T_funcData.T_funcData((_t : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>), ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
