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
class Section_asInterface {
    @:keep
    @:tdfield
    public dynamic function open():stdgo._internal.io.Io_ReadSeeker.ReadSeeker return @:_0 __self__.value.open();
    @:keep
    @:tdfield
    public dynamic function data():{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.data();
    @:embedded
    @:embeddededffieldsffun
    public dynamic function readAt(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.readAt(_0, _1);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.debug.macho.Macho_SectionPointer.SectionPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
