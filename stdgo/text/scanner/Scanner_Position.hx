package stdgo.text.scanner;
@:structInit @:using(stdgo.text.scanner.Scanner.Position_static_extension) abstract Position(stdgo._internal.text.scanner.Scanner_Position.Position) from stdgo._internal.text.scanner.Scanner_Position.Position to stdgo._internal.text.scanner.Scanner_Position.Position {
    public var filename(get, set) : String;
    function get_filename():String return this.filename;
    function set_filename(v:String):String {
        this.filename = (v : stdgo.GoString);
        return v;
    }
    public var offset(get, set) : StdTypes.Int;
    function get_offset():StdTypes.Int return this.offset;
    function set_offset(v:StdTypes.Int):StdTypes.Int {
        this.offset = (v : stdgo.GoInt);
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
    public function new(?filename:String, ?offset:StdTypes.Int, ?line:StdTypes.Int, ?column:StdTypes.Int) this = new stdgo._internal.text.scanner.Scanner_Position.Position((filename : stdgo.GoString), (offset : stdgo.GoInt), (line : stdgo.GoInt), (column : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
