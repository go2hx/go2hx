package stdgo._internal.internal.xcoff;
class File_asInterface {
    @:keep
    public dynamic function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value.importedLibraries();
    @:keep
    public dynamic function importedSymbols():{ var _0 : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>; var _1 : stdgo.Error; } return __self__.value.importedSymbols();
    @:keep
    public dynamic function _readImportIDs(_s:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return __self__.value._readImportIDs(_s);
    @:keep
    public dynamic function dwarf():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } return __self__.value.dwarf();
    @:keep
    public dynamic function csect(_name:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return __self__.value.csect(_name);
    @:keep
    public dynamic function sectionByType(_typ:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> return __self__.value.sectionByType(_typ);
    @:keep
    public dynamic function section(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> return __self__.value.section(_name);
    @:keep
    public dynamic function close():stdgo.Error return __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.xcoff.Xcoff_File.File>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
