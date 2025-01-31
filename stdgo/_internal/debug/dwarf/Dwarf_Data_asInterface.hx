package stdgo._internal.debug.dwarf;
import stdgo._internal.errors.Errors;
import stdgo._internal.path.Path;
import stdgo._internal.strings.Strings;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
class Data_asInterface {
    @:keep
    @:tdfield
    public dynamic function _offsetToUnit(_off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):stdgo.GoInt return @:_0 __self__.value._offsetToUnit(_off);
    @:keep
    @:tdfield
    public dynamic function _parseUnits():{ var _0 : stdgo.Slice<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>; var _1 : stdgo.Error; } return @:_0 __self__.value._parseUnits();
    @:keep
    @:tdfield
    public dynamic function _sigToType(_sig:stdgo.GoUInt64):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } return @:_0 __self__.value._sigToType(_sig);
    @:keep
    @:tdfield
    public dynamic function _parseTypes(_name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value._parseTypes(_name, _types);
    @:keep
    @:tdfield
    public dynamic function _readType(_name:stdgo.GoString, _r:stdgo._internal.debug.dwarf.Dwarf_T_typeReader.T_typeReader, _off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, _typeCache:stdgo.GoMap<stdgo._internal.debug.dwarf.Dwarf_Offset.Offset, stdgo._internal.debug.dwarf.Dwarf_Type_.Type_>, _fixups:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_typeFixer.T_typeFixer>):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } return @:_0 __self__.value._readType(_name, _r, _off, _typeCache, _fixups);
    @:keep
    @:tdfield
    public dynamic function type(_off:stdgo._internal.debug.dwarf.Dwarf_Offset.Offset):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_Type_.Type_; var _1 : stdgo.Error; } return @:_0 __self__.value.type(_off);
    @:keep
    @:tdfield
    public dynamic function addSection(_name:stdgo.GoString, _contents:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.addSection(_name, _contents);
    @:keep
    @:tdfield
    public dynamic function addTypes(_name:stdgo.GoString, _types:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error return @:_0 __self__.value.addTypes(_name, _types);
    @:keep
    @:tdfield
    public dynamic function lineReader(_cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_LineReader.LineReader>; var _1 : stdgo.Error; } return @:_0 __self__.value.lineReader(_cu);
    @:keep
    @:tdfield
    public dynamic function _debugAddr(_format:stdgo._internal.debug.dwarf.Dwarf_T_dataFormat.T_dataFormat, _addrBase:stdgo.GoUInt64, _idx:stdgo.GoUInt64):{ var _0 : stdgo.GoUInt64; var _1 : stdgo.Error; } return @:_0 __self__.value._debugAddr(_format, _addrBase, _idx);
    @:keep
    @:tdfield
    public dynamic function _dwarf5Ranges(_u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>, _cu:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } return @:_0 __self__.value._dwarf5Ranges(_u, _cu, _base, _ranges, _ret);
    @:keep
    @:tdfield
    public dynamic function _dwarf2Ranges(_u:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_T_unit.T_unit>, _base:stdgo.GoUInt64, _ranges:stdgo.GoInt64, _ret:stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } return @:_0 __self__.value._dwarf2Ranges(_u, _base, _ranges, _ret);
    @:keep
    @:tdfield
    public dynamic function _baseAddressForEntry(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>; var _1 : stdgo.GoUInt64; var _2 : stdgo.Error; } return @:_0 __self__.value._baseAddressForEntry(_e);
    @:keep
    @:tdfield
    public dynamic function ranges(_e:stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Entry.Entry>):{ var _0 : stdgo.Slice<stdgo.GoArray<stdgo.GoUInt64>>; var _1 : stdgo.Error; } return @:_0 __self__.value.ranges(_e);
    @:keep
    @:tdfield
    public dynamic function reader():stdgo.Ref<stdgo._internal.debug.dwarf.Dwarf_Reader.Reader> return @:_0 __self__.value.reader();
    @:keep
    @:tdfield
    public dynamic function _parseAbbrev(_off:stdgo.GoUInt64, _vers:stdgo.GoInt):{ var _0 : stdgo._internal.debug.dwarf.Dwarf_T_abbrevTable.T_abbrevTable; var _1 : stdgo.Error; } return @:_0 __self__.value._parseAbbrev(_off, _vers);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.dwarf.Dwarf_DataPointer.DataPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
