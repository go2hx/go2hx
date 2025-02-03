package stdgo.debug.elf;
@:structInit @:using(stdgo.debug.elf.Elf.ImportedSymbol_static_extension) abstract ImportedSymbol(stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol) from stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol to stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol {
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var version(get, set) : String;
    function get_version():String return this.version;
    function set_version(v:String):String {
        this.version = (v : stdgo.GoString);
        return v;
    }
    public var library(get, set) : String;
    function get_library():String return this.library;
    function set_library(v:String):String {
        this.library = (v : stdgo.GoString);
        return v;
    }
    public function new(?name:String, ?version:String, ?library:String) this = new stdgo._internal.debug.elf.Elf_ImportedSymbol.ImportedSymbol((name : stdgo.GoString), (version : stdgo.GoString), (library : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
