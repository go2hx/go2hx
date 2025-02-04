package stdgo._internal.debug.macho;
@:keep @:allow(stdgo._internal.debug.macho.Macho.FatArch_asInterface) class FatArch_static_extension {
    @:embedded
    @:embeddededffieldsffun
    public static function _pushSection( __self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch, _0:stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>, _1:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Error return @:_5 __self__._pushSection(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public static function _parseSymtab( __self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch, _0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Slice<stdgo.GoUInt8>, _3:stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>, _4:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>; var _1 : stdgo.Error; } return @:_5 __self__._parseSymtab(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public static function segment( __self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch, _0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment> return @:_5 __self__.segment(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function section( __self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch, _0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section> return @:_5 __self__.section(_0);
    @:embedded
    @:embeddededffieldsffun
    public static function importedSymbols( __self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.importedSymbols();
    @:embedded
    @:embeddededffieldsffun
    public static function importedLibraries( __self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_5 __self__.importedLibraries();
    @:embedded
    @:embeddededffieldsffun
    public static function dWARF( __self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } return @:_5 __self__.dWARF();
    @:embedded
    @:embeddededffieldsffun
    public static function close( __self__:stdgo._internal.debug.macho.Macho_fatarch.FatArch):stdgo.Error return @:_5 __self__.close();
}
