package stdgo._internal.go.token;
@:structInit @:using(stdgo._internal.go.token.Token_t_lineinfo_static_extension.T_lineInfo_static_extension) class T_lineInfo {
    public var offset : stdgo.GoInt = 0;
    public var filename : stdgo.GoString = "";
    public var line : stdgo.GoInt = 0;
    public var column : stdgo.GoInt = 0;
    public function new(?offset:stdgo.GoInt, ?filename:stdgo.GoString, ?line:stdgo.GoInt, ?column:stdgo.GoInt) {
        if (offset != null) this.offset = offset;
        if (filename != null) this.filename = filename;
        if (line != null) this.line = line;
        if (column != null) this.column = column;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lineInfo(offset, filename, line, column);
    }
}
