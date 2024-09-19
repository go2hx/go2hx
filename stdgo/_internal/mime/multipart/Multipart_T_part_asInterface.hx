package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
class T_part_asInterface {
    @:keep
    public dynamic function write(_d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_d);
    @:keep
    public dynamic function _close():stdgo.Error return __self__.value._close();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.mime.multipart.Multipart_T_part.T_part>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
