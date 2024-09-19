package stdgo._internal.internal.xcoff;
@:structInit class ImportedSymbol {
    public var name : stdgo.GoString = "";
    public var library : stdgo.GoString = "";
    public function new(?name:stdgo.GoString, ?library:stdgo.GoString) {
        if (name != null) this.name = name;
        if (library != null) this.library = library;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ImportedSymbol(name, library);
    }
}