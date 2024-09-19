package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_FatArch_static_extension.FatArch_static_extension) class FatArch {
    @:embedded
    public var fatArchHeader : stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader = ({} : stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader);
    @:embedded
    public var file : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>);
    public function new(?fatArchHeader:stdgo._internal.debug.macho.Macho_FatArchHeader.FatArchHeader, ?file:stdgo.Ref<stdgo._internal.debug.macho.Macho_File.File>) {
        if (fatArchHeader != null) this.fatArchHeader = fatArchHeader;
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function close():stdgo.Error return this.file.close();
    @:embedded
    public function dwarf():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } return this.file.dwarf();
    @:embedded
    public function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return this.file.importedLibraries();
    @:embedded
    public function importedSymbols():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return this.file.importedSymbols();
    @:embedded
    public function section(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section> return this.file.section(__0);
    @:embedded
    public function segment(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> return this.file.segment(__0);
    @:embedded
    public function _parseSymtab(_symdat:stdgo.Slice<stdgo.GoUInt8>, _strtab:stdgo.Slice<stdgo.GoUInt8>, _cmddat:stdgo.Slice<stdgo.GoUInt8>, _hdr:stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>, _offset:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>; var _1 : stdgo.Error; } return this.file._parseSymtab(_symdat, _strtab, _cmddat, _hdr, _offset);
    @:embedded
    public function _pushSection(_sh:stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>, _r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error return this.file._pushSection(_sh, _r);
    public function __copy__() {
        return new FatArch(fatArchHeader, file);
    }
}
