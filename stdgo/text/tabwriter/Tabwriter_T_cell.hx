package stdgo.text.tabwriter;
@:structInit @:using(stdgo.text.tabwriter.Tabwriter.T_cell_static_extension) abstract T_cell(stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell) from stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell to stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell {
    public var _size(get, set) : StdTypes.Int;
    function get__size():StdTypes.Int return this._size;
    function set__size(v:StdTypes.Int):StdTypes.Int {
        this._size = (v : stdgo.GoInt);
        return v;
    }
    public var _width(get, set) : StdTypes.Int;
    function get__width():StdTypes.Int return this._width;
    function set__width(v:StdTypes.Int):StdTypes.Int {
        this._width = (v : stdgo.GoInt);
        return v;
    }
    public var _htab(get, set) : Bool;
    function get__htab():Bool return this._htab;
    function set__htab(v:Bool):Bool {
        this._htab = v;
        return v;
    }
    public function new(?_size:StdTypes.Int, ?_width:StdTypes.Int, ?_htab:Bool) this = new stdgo._internal.text.tabwriter.Tabwriter_T_cell.T_cell((_size : stdgo.GoInt), (_width : stdgo.GoInt), _htab);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
