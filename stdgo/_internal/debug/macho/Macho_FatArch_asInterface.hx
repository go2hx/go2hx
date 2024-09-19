package stdgo._internal.debug.macho;
class FatArch_asInterface {
    @:embedded
    public dynamic function _pushSection(_sh:stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>, _r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error return __self__.value._pushSection(_sh, _r);
    @:embedded
    public dynamic function _parseSymtab(_symdat:stdgo.Slice<stdgo.GoUInt8>, _strtab:stdgo.Slice<stdgo.GoUInt8>, _cmddat:stdgo.Slice<stdgo.GoUInt8>, _hdr:stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>, _offset:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>; var _1 : stdgo.Error; } return __self__.value._parseSymtab(_symdat, _strtab, _cmddat, _hdr, _offset);
    @:embedded
    public dynamic function segment(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> return __self__.value.segment(__0);
    @:embedded
    public dynamic function section(__0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section> return __self__.value.section(__0);
    @:embedded
    public dynamic function importedSymbols():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.importedSymbols();
    @:embedded
    public dynamic function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.importedLibraries();
    @:embedded
    public dynamic function dwarf():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } return __self__.value.dwarf();
    @:embedded
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.debug.macho.Macho_FatArch.FatArch>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
