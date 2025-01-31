package stdgo._internal.debug.macho;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.debug.macho.Macho_File_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.debug.macho.Macho_FileHeader.FileHeader = ({} : stdgo._internal.debug.macho.Macho_FileHeader.FileHeader);
    public var byteOrder : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder);
    public var loads : stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load> = (null : stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load>);
    public var sections : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>>);
    public var symtab : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>);
    public var dysymtab : stdgo.Ref<stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab>);
    public var _closer : stdgo._internal.io.Io_Closer.Closer = (null : stdgo._internal.io.Io_Closer.Closer);
    public function new(?fileHeader:stdgo._internal.debug.macho.Macho_FileHeader.FileHeader, ?byteOrder:stdgo._internal.encoding.binary.Binary_ByteOrder.ByteOrder, ?loads:stdgo.Slice<stdgo._internal.debug.macho.Macho_Load.Load>, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>>, ?symtab:stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>, ?dysymtab:stdgo.Ref<stdgo._internal.debug.macho.Macho_Dysymtab.Dysymtab>, ?_closer:stdgo._internal.io.Io_Closer.Closer) {
        if (fileHeader != null) this.fileHeader = fileHeader;
        if (byteOrder != null) this.byteOrder = byteOrder;
        if (loads != null) this.loads = loads;
        if (sections != null) this.sections = sections;
        if (symtab != null) this.symtab = symtab;
        if (dysymtab != null) this.dysymtab = dysymtab;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new File(fileHeader, byteOrder, loads, sections, symtab, dysymtab, _closer);
    }
}
