package stdgo.debug.gosym;
@:structInit @:using(stdgo.debug.gosym.Gosym.UnknownLineError_static_extension) abstract UnknownLineError(stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError) from stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError to stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError {
    public var file(get, set) : String;
    function get_file():String return this.file;
    function set_file(v:String):String {
        this.file = (v : stdgo.GoString);
        return v;
    }
    public var line(get, set) : StdTypes.Int;
    function get_line():StdTypes.Int return this.line;
    function set_line(v:StdTypes.Int):StdTypes.Int {
        this.line = (v : stdgo.GoInt);
        return v;
    }
    public function new(?file:String, ?line:StdTypes.Int) this = new stdgo._internal.debug.gosym.Gosym_UnknownLineError.UnknownLineError((file : stdgo.GoString), (line : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
