package stdgo.internal.xcoff;
@:structInit @:using(stdgo.internal.xcoff.Xcoff.ImportedSymbol_static_extension) abstract ImportedSymbol(stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol) from stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol to stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var library(get, set) : String;
    function get_library():String return this.library;
    function set_library(v:String):String {
        this.library = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?library:String) this = new stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol((name : stdgo.GoString), (library : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
