package stdgo._internal.debug.macho;
class FatArch_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pushSection(_0:stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>, _1:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Error return @:_0 __self__.value._pushSection(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _parseSymtab(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Slice<stdgo.GoUInt8>, _3:stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>, _4:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseSymtab(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function segment(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment> return @:_0 __self__.value.segment(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function section(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section> return @:_0 __self__.value.section(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function importedSymbols():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedSymbols();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedLibraries();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function dWARF():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } return @:_0 __self__.value.dWARF();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.macho.Macho_fatarchpointer.FatArchPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
