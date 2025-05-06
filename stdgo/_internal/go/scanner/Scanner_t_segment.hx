package stdgo._internal.go.scanner;
@:structInit @:using(stdgo._internal.go.scanner.Scanner_t_segment_static_extension.T_segment_static_extension) class T_segment {
    public var _srcline : stdgo.GoString = "";
    public var _filename : stdgo.GoString = "";
    public var _line : stdgo.GoInt = 0;
    public var _column : stdgo.GoInt = 0;
    public function new(?_srcline:stdgo.GoString, ?_filename:stdgo.GoString, ?_line:stdgo.GoInt, ?_column:stdgo.GoInt) {
        if (_srcline != null) this._srcline = _srcline;
        if (_filename != null) this._filename = _filename;
        if (_line != null) this._line = _line;
        if (_column != null) this._column = _column;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_segment(_srcline, _filename, _line, _column);
    }
}
