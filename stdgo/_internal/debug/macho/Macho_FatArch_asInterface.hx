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
class FatArch_asInterface {
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _pushSection(_0:stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section>, _1:stdgo._internal.io.Io_ReaderAt.ReaderAt):stdgo.Error return @:_0 __self__.value._pushSection(_0, _1);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function _parseSymtab(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.Slice<stdgo.GoUInt8>, _2:stdgo.Slice<stdgo.GoUInt8>, _3:stdgo.Ref<stdgo._internal.debug.macho.Macho_SymtabCmd.SymtabCmd>, _4:stdgo.GoInt64):{ var _0 : stdgo.Ref<stdgo._internal.debug.macho.Macho_Symtab.Symtab>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseSymtab(_0, _1, _2, _3, _4);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function segment(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Segment.Segment> return @:_0 __self__.value.segment(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function section(_0:stdgo.GoString):stdgo.Ref<stdgo._internal.debug.macho.Macho_Section.Section> return @:_0 __self__.value.section(_0);
    @:embedded
    @:embeddededffieldsffun
    public dynamic function importedSymbols():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedSymbols();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function importedLibraries():{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Error; } return @:_0 __self__.value.importedLibraries();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function dWARF():{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Data.Data>; var _1 : stdgo.Error; } return @:_0 __self__.value.dWARF();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function close():stdgo.Error return @:_0 __self__.value.close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.macho.Macho_FatArchPointer.FatArchPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
