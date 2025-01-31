package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
class File_asInterface {
    @:keep
    @:tdfield
    public dynamic function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedLibraries();
    @:keep
    @:tdfield
    public dynamic function importedSymbols():{ var _0 : stdgo.Slice<stdgo._internal.internal.xcoff.Xcoff_ImportedSymbol.ImportedSymbol>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedSymbols();
    @:keep
    @:tdfield
    public dynamic function _readImportIDs(_s:stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section>):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value._readImportIDs(_s);
    @:keep
    @:tdfield
    public dynamic function dWARF():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } return @:_0 __self__.value.dWARF();
    @:keep
    @:tdfield
    public dynamic function cSect(_name:stdgo.GoString):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.cSect(_name);
    @:keep
    @:tdfield
    public dynamic function sectionByType(_typ:stdgo.GoUInt32):stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> return @:_0 __self__.value.sectionByType(_typ);
    @:keep
    @:tdfield
    public dynamic function section(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.internal.xcoff.Xcoff_Section.Section> return @:_0 __self__.value.section(_name);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.xcoff.Xcoff_FilePointer.FilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
