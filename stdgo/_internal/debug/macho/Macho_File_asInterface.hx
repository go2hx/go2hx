package stdgo._internal.debug.macho;
import stdgo._internal.io.Io;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.compress.zlib.Zlib;
import stdgo._internal.debug.dwarf.Dwarf;
class File_asInterface {
    @:keep
    @:tdfield
    public dynamic function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedLibraries();
    @:keep
    @:tdfield
    public dynamic function importedSymbols():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedSymbols();
    @:keep
    @:tdfield
    public dynamic function dWARF():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } return @:_0 __self__.value.dWARF();
    @:keep
    @:tdfield
    public dynamic function section(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section> return @:_0 __self__.value.section(_name);
    @:keep
    @:tdfield
    public dynamic function segment(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> return @:_0 __self__.value.segment(_name);
    @:keep
    @:tdfield
    public dynamic function _pushSection(_sh:stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>, _r:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error return @:_0 __self__.value._pushSection(_sh, _r);
    @:keep
    @:tdfield
    public dynamic function _parseSymtab(_symdat:stdgo.Slice<stdgo.GoUInt8>, _strtab:stdgo.Slice<stdgo.GoUInt8>, _cmddat:stdgo.Slice<stdgo.GoUInt8>, _hdr:stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>, _offset:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseSymtab(_symdat, _strtab, _cmddat, _hdr, _offset);
    @:keep
    @:tdfield
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.macho.Macho_FilePointer.FilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
