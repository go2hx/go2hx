package stdgo._internal.debug.macho;
@:structInit @:using(stdgo._internal.debug.macho.Macho_fatarch_static_extension.FatArch_static_extension) class FatArch {
    @:embedded
    public var fatArchHeader : stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader = ({} : stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader);
    @:embedded
    public var file : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File> = (null : stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>);
    public function new(?fatArchHeader:stdgo._internal.debug.macho.Macho_fatarchheader.FatArchHeader, ?file:stdgo.Ref<stdgo._internal.debug.macho.Macho_file.File>) {
        if (fatArchHeader != null) this.fatArchHeader = fatArchHeader;
        if (file != null) this.file = file;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var close(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_close():() -> stdgo.Error return @:check32 this.file.close;
    public var dWARF(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_dWARF():() -> { var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } return @:check32 this.file.dWARF;
    public var importedLibraries(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_importedLibraries():() -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.file.importedLibraries;
    public var importedSymbols(get, never) : () -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_importedSymbols():() -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:check32 this.file.importedSymbols;
    public var section(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>;
    @:embedded
    @:embeddededffieldsffun
    public function get_section():stdgo.GoString -> stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section> return @:check32 this.file.section;
    public var segment(get, never) : stdgo.GoString -> stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment>;
    @:embedded
    @:embeddededffieldsffun
    public function get_segment():stdgo.GoString -> stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment> return @:check32 this.file.segment;
    public var _parseSymtab(get, never) : (stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>, stdgo.GoInt64) -> { var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__parseSymtab():(stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Slice<stdgo.GoUInt8>, stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>, stdgo.GoInt64) -> { var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>; var _1 : stdgo.Error; } return @:check32 this.file._parseSymtab;
    public var _pushSection(get, never) : (stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>, stdgo._internal.io.Io_readerat.ReaderAt) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__pushSection():(stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>, stdgo._internal.io.Io_readerat.ReaderAt) -> stdgo.Error return @:check32 this.file._pushSection;
    public function __copy__() {
        return new FatArch(fatArchHeader, file);
    }
}
