package stdgo._internal.encoding.csv;
@:structInit @:using(stdgo._internal.encoding.csv.Csv_t_position_static_extension.T_position_static_extension) class T_position {
    public var _line : stdgo.GoInt = 0;
    public var _col : stdgo.GoInt = 0;
    public function new(?_line:stdgo.GoInt, ?_col:stdgo.GoInt) {
        if (_line != null) this._line = _line;
        if (_col != null) this._col = _col;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_position(_line, _col);
    }
}
