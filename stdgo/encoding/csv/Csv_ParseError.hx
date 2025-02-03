package stdgo.encoding.csv;
@:structInit @:using(stdgo.encoding.csv.Csv.ParseError_static_extension) abstract ParseError(stdgo._internal.encoding.csv.Csv_ParseError.ParseError) from stdgo._internal.encoding.csv.Csv_ParseError.ParseError to stdgo._internal.encoding.csv.Csv_ParseError.ParseError {
    public var startLine(get, set) : StdTypes.Int;
    function get_startLine():StdTypes.Int return this.startLine;
    function set_startLine(v:StdTypes.Int):StdTypes.Int {
        this.startLine = (v : stdgo.GoInt);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public var column(get, set) : StdTypes.Int;
    function get_column():StdTypes.Int return this.column;
    function set_column(v:StdTypes.Int):StdTypes.Int {
        this.column = (v : stdgo.GoInt);
        return v;
    }
    public var err(get, set) : stdgo.Error;
    function get_err():stdgo.Error return this.err;
    function set_err(v:stdgo.Error):stdgo.Error {
        this.err = (v : stdgo.Error);
        return v;
    }
    public function new(?startLine:StdTypes.Int, ?line:StdTypes.Int, ?column:StdTypes.Int, ?err:stdgo.Error) this = new stdgo._internal.encoding.csv.Csv_ParseError.ParseError((startLine : stdgo.GoInt), (line : stdgo.GoInt), (column : stdgo.GoInt), (err : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
