package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.T_funcTab_static_extension) abstract T_funcTab(stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab) from stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab to stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab {
    public var lineTable(get, set) : LineTable;
    function get_lineTable():LineTable return this.lineTable;
    function set_lineTable(v:LineTable):LineTable {
        this.lineTable = (v : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
        return v;
    }
    public var _sz(get, set) : StdTypes.Int;
    function get__sz():StdTypes.Int return this._sz;
    function set__sz(v:StdTypes.Int):StdTypes.Int {
        this._sz = (v : stdgo.GoInt);
        return v;
    }
    public function new(?lineTable:LineTable, ?_sz:StdTypes.Int) this = new stdgo._internal.debug.gosym.Gosym_T_funcTab.T_funcTab((lineTable : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>), (_sz : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
