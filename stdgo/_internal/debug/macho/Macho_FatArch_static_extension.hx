package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.FatArch_asInterface) class FatArch_static_extension {
    @:embedded
    public static function _pushSection( __self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _sh:stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>, _r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error return __self__._pushSection(_sh, _r);
    @:embedded
    public static function _parseSymtab( __self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, _symdat:stdgo.Slice<stdgo.GoUInt8>, _strtab:stdgo.Slice<stdgo.GoUInt8>, _cmddat:stdgo.Slice<stdgo.GoUInt8>, _hdr:stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>, _offset:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>; var _1 : stdgo.Error; } return __self__._parseSymtab(_symdat, _strtab, _cmddat, _hdr, _offset);
    @:embedded
    public static function segment( __self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, __0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> return __self__.segment(__0);
    @:embedded
    public static function section( __self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch, __0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section> return __self__.section(__0);
    @:embedded
    public static function importedSymbols( __self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.importedSymbols();
    @:embedded
    public static function importedLibraries( __self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.importedLibraries();
    @:embedded
    public static function dwarf( __self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } return __self__.dwarf();
    @:embedded
    public static function close( __self__:stdgo._internal.debug.macho.Macho_FatArch.FatArch):stdgo.Error return __self__.close();
}
