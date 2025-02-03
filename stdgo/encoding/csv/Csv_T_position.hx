package stdgo.encoding.csv;
@:structInit @:using(stdgo.encoding.csv.Csv.T_position_static_extension) abstract T_position(stdgo._internal.encoding.csv.Csv_T_position.T_position) from stdgo._internal.encoding.csv.Csv_T_position.T_position to stdgo._internal.encoding.csv.Csv_T_position.T_position {
    public var _line(get, set) : StdTypes.Int;
    function get__line():StdTypes.Int return this._line;
    function set__line(v:StdTypes.Int):StdTypes.Int {
        this._line = (v : stdgo.GoInt);
        return v;
    }
    public var _col(get, set) : StdTypes.Int;
    function get__col():StdTypes.Int return this._col;
    function set__col(v:StdTypes.Int):StdTypes.Int {
        this._col = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_line:StdTypes.Int, ?_col:StdTypes.Int) this = new stdgo._internal.encoding.csv.Csv_T_position.T_position((_line : stdgo.GoInt), (_col : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
