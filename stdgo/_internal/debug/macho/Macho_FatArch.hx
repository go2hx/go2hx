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
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check3 this.file.close;
    public var dWARF(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_dWARF():() -> { var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } return @:check3 this.file.dWARF;
    public var importedLibraries(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_importedLibraries():() -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check3 this.file.importedLibraries;
    public var importedSymbols(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_importedSymbols():() -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check3 this.file.importedSymbols;
    public var section(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>;
    @:embedded
    @:embeddededffieldsffun
    public function get_section():stdgo.GoString -> stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section> return @:check3 this.file.section;
    public var segment(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment>;
    @:embedded
    @:embeddededffieldsffun
    public function get_segment():stdgo.GoString -> stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> return @:check3 this.file.segment;
    public var _parseSymtab(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>, stdgo.GoInt64) -> { var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__parseSymtab():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>, stdgo.GoInt64) -> { var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>; var _1 : stdgo.Error; } return @:check3 this.file._parseSymtab;
    public var _pushSection(get, never) : (stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>, stdgo._internal.io.Io_ReaderAt.ReaderAt) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__pushSection():(stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>, stdgo._internal.io.Io_ReaderAt.ReaderAt) -> stdgo.Error return @:check3 this.file._pushSection;
    public function __copy__() {
        return new FatArch(fatArchHeader, file);
    }
}
