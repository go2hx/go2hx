package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol_static_extension.ImportedSymbol_static_extension) class ImportedSymbol {
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
