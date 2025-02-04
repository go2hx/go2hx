package stdgo._internal.debug.elf;
class File_asInterface {
    @:keep
    @:tdfield
    public dynamic function dynValue(_tag:stdgo._internal.debug.elf.Elf_dyntag.DynTag):{ var _0 : stdgo.Slice<stdgo.GoUInt64>; var _1 : stdgo.Error; } return @:_0 __self__.value.dynValue(_tag);
    @:keep
    @:tdfield
    public dynamic function dynString(_tag:stdgo._internal.debug.elf.Elf_dyntag.DynTag):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.dynString(_tag);
    @:keep
    @:tdfield
    public dynamic function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedLibraries();
    @:keep
    @:tdfield
    public dynamic function _gnuVersion(_i:stdgo.GoInt):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } return @:_0 __self__.value._gnuVersion(_i);
    @:keep
    @:tdfield
    public dynamic function _gnuVersionInit(_str:stdgo.Slice<stdgo.GoUInt8>):Bool return @:_0 __self__.value._gnuVersionInit(_str);
    @:keep
    @:tdfield
    public dynamic function importedSymbols():{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_importedsymbol.ImportedSymbol>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedSymbols();
    @:keep
    @:tdfield
    public dynamic function dynamicSymbols():{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Error; } return @:_0 __self__.value.dynamicSymbols();
    @:keep
    @:tdfield
    public dynamic function symbols():{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Error; } return @:_0 __self__.value.symbols();
    @:keep
    @:tdfield
    public dynamic function dWARF():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_data.Data>; var _1 : stdgo.Error; } return @:_0 __self__.value.dWARF();
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsSPARC64(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsSPARC64(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationss390x(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationss390x(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsRISCV64(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsRISCV64(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsLOONG64(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsLOONG64(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsMIPS64(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsMIPS64(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsMIPS(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsMIPS(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsPPC64(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsPPC64(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsPPC(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsPPC(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsARM64(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsARM64(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsARM(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsARM(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocations386(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocations386(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocationsAMD64(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocationsAMD64(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function _applyRelocations(_dst:stdgo.Slice<stdgo.GoUInt8>, _rels:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._applyRelocations(_dst, _rels);
    @:keep
    @:tdfield
    public dynamic function section(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section> return @:_0 __self__.value.section(_name);
    @:keep
    @:tdfield
    public dynamic function _getSymbols64(_typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value._getSymbols64(_typ);
    @:keep
    @:tdfield
    public dynamic function _getSymbols32(_typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value._getSymbols32(_typ);
    @:keep
    @:tdfield
    public dynamic function _getSymbols(_typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):{ var _0 : stdgo.Slice<stdgo._internal.debug.elf.Elf_symbol.Symbol>; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } return @:_0 __self__.value._getSymbols(_typ);
    @:keep
    @:tdfield
    public dynamic function sectionByType(_typ:stdgo._internal.debug.elf.Elf_sectiontype.SectionType):stdgo.Ref<stdgo._internal.debug.elf.Elf_section.Section> return @:_0 __self__.value.sectionByType(_typ);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function _stringTable(_link:stdgo.GoUInt32):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._stringTable(_link);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.elf.Elf_filepointer.FilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
