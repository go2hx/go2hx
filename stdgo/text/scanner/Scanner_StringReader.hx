package stdgo.text.scanner;
@:structInit @:using(stdgo.text.scanner.Scanner.StringReader_static_extension) abstract StringReader(stdgo._internal.text.scanner.Scanner_StringReader.StringReader) from stdgo._internal.text.scanner.Scanner_StringReader.StringReader to stdgo._internal.text.scanner.Scanner_StringReader.StringReader {
    public var _data(get, set) : Array<String>;
    function get__data():Array<String> return [for (i in this._data) i];
    function set__data(v:Array<String>):Array<String> {
        this._data = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public var _step(get, set) : StdTypes.Int;
    function get__step():StdTypes.Int return this._step;
    function set__step(v:StdTypes.Int):StdTypes.Int {
        this._step = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_data:Array<String>, ?_step:StdTypes.Int) this = new stdgo._internal.text.scanner.Scanner_StringReader.StringReader(([for (i in _data) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>), (_step : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
