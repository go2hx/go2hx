package stdgo._internal.encoding.csv;
@:structInit @:using(stdgo._internal.encoding.csv.Csv_parseerror_static_extension.ParseError_static_extension) class ParseError {
    public var startLine : stdgo.GoInt = 0;
    public var line : stdgo.GoInt = 0;
    public var column : stdgo.GoInt = 0;
    public var err : stdgo.Error = (null : stdgo.Error);
    public function new(?startLine:stdgo.GoInt, ?line:stdgo.GoInt, ?column:stdgo.GoInt, ?err:stdgo.Error) {
        if (startLine != null) this.startLine = startLine;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
        if (err != null) this.err = err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ParseError(startLine, line, column, err);
    }
}
