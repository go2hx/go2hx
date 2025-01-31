package stdgo._internal.debug.pe;
import stdgo._internal.os.Os;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.errors.Errors;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
import stdgo._internal.strconv.Strconv;
@:structInit @:using(stdgo._internal.debug.pe.Pe_FileHeader_static_extension.FileHeader_static_extension) class FileHeader {
    public var machine : stdgo.GoUInt16 = 0;
    public var numberOfSections : stdgo.GoUInt16 = 0;
    public var timeDateStamp : stdgo.GoUInt32 = 0;
    public var pointerToSymbolTable : stdgo.GoUInt32 = 0;
    public var numberOfSymbols : stdgo.GoUInt32 = 0;
    public var sizeOfOptionalHeader : stdgo.GoUInt16 = 0;
    public var characteristics : stdgo.GoUInt16 = 0;
    public function new(?machine:stdgo.GoUInt16, ?numberOfSections:stdgo.GoUInt16, ?timeDateStamp:stdgo.GoUInt32, ?pointerToSymbolTable:stdgo.GoUInt32, ?numberOfSymbols:stdgo.GoUInt32, ?sizeOfOptionalHeader:stdgo.GoUInt16, ?characteristics:stdgo.GoUInt16) {
        if (machine != null) this.machine = machine;
        if (numberOfSections != null) this.numberOfSections = numberOfSections;
        if (timeDateStamp != null) this.timeDateStamp = timeDateStamp;
        if (pointerToSymbolTable != null) this.pointerToSymbolTable = pointerToSymbolTable;
        if (numberOfSymbols != null) this.numberOfSymbols = numberOfSymbols;
        if (sizeOfOptionalHeader != null) this.sizeOfOptionalHeader = sizeOfOptionalHeader;
        if (characteristics != null) this.characteristics = characteristics;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(machine, numberOfSections, timeDateStamp, pointerToSymbolTable, numberOfSymbols, sizeOfOptionalHeader, characteristics);
    }
}
