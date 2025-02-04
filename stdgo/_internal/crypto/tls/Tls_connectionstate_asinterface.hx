package stdgo._internal.crypto.tls;
class ConnectionState_asInterface {
    @:keep
    @:tdfield
    public dynamic function exportKeyingMaterial(_label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value.exportKeyingMaterial(_label, _context, _length);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_connectionstatepointer.ConnectionStatePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
