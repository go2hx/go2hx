package stdgo._internal.debug.elf;
import stdgo._internal.errors.Errors;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strings.Strings;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.internal.zstd.Zstd;
@:structInit @:using(stdgo._internal.debug.elf.Elf_ImportedSymbol_static_extension.ImportedSymbol_static_extension) class ImportedSymbol {
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
