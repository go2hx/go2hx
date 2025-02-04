package stdgo._internal.debug.elf;
@:structInit @:using(stdgo._internal.debug.elf.Elf_importedsymbol_static_extension.ImportedSymbol_static_extension) class ImportedSymbol {
    public var name : stdgo.GoString = "";
    public var version : stdgo.GoString = "";
    public var library : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?version:stdgo.GoString, ?library:stdgo.GoString) {
        if (name != null) this.name = name;
        if (version != null) this.version = version;
        if (library != null) this.library = library;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ImportedSymbol(name, version, library);
    }
}
