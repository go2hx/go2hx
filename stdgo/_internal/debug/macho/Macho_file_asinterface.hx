package stdgo._internal.debug.macho;
class File_asInterface {
    @:keep
    @:tdfield
    public dynamic function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedLibraries();
    @:keep
    @:tdfield
    public dynamic function importedSymbols():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedSymbols();
    @:keep
    @:tdfield
    public dynamic function dWARF():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } return @:_0 __self__.value.dWARF();
    @:keep
    @:tdfield
    public dynamic function section(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section> return @:_0 __self__.value.section(_name);
    @:keep
    @:tdfield
    public dynamic function segment(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_segment.Segment> return @:_0 __self__.value.segment(_name);
    @:keep
    @:tdfield
    public dynamic function _pushSection(_sh:stdgo.Ref<stdgo._internal.debug.macho.Macho_section.Section>, _r:stdgo._internal.io.Io_readerat.ReaderAt):stdgo.Error return @:_0 __self__.value._pushSection(_sh, _r);
    @:keep
    @:tdfield
    public dynamic function _parseSymtab(_symdat:stdgo.Slice<stdgo.GoUInt8>, _strtab:stdgo.Slice<stdgo.GoUInt8>, _cmddat:stdgo.Slice<stdgo.GoUInt8>, _hdr:stdgo.Ref<stdgo._internal.debug.macho.Macho_symtabcmd.SymtabCmd>, _offset:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_symtab.Symtab>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseSymtab(_symdat, _strtab, _cmddat, _hdr, _offset);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.macho.Macho_filepointer.FilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
