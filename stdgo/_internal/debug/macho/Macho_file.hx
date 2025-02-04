package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_file_static_extension.File_static_extension) class File {
    @:embedded
    public var fileHeader : stdgo._internal.debug.macho.Macho_fileheader.FileHeader = ({} : stdgo._internal.debug.macho.Macho_fileheader.FileHeader);
    public var byteOrder : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder = (null : stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder);
    public var loads : stdgo.Slice<stdgo._internal.debug.macho.Macho_load.Load> = (null : stdgo.Slice<stdgo._internal.debug.macho.Macho_load.Load>);
    public var sections : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>>);
    public var symtab : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>);
    public var dysymtab : stdgo.Ref<stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab>);
    public var _closer : stdgo._internal.io.Io_closer.Closer = (null : stdgo._internal.io.Io_closer.Closer);
    public function new(?fileHeader:stdgo._internal.debug.macho.Macho_fileheader.FileHeader, ?byteOrder:stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder, ?loads:stdgo.Slice<stdgo._internal.debug.macho.Macho_load.Load>, ?sections:stdgo.Slice<stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>>, ?symtab:stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>, ?dysymtab:stdgo.Ref<stdgo._internal.debug.macho.Macho_dysymtab.Dysymtab>, ?_closer:stdgo._internal.io.Io_closer.Closer) {
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
