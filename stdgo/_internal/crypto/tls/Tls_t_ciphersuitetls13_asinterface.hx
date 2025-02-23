package stdgo._internal.crypto.tls;
class T_cipherSuiteTLS13_asInterface {
    @:keep
    @:tdfield
    public dynamic function _exportKeyingMaterial(_masterSecret:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_hash.Hash):(stdgo.GoString, stdgo.Slice<stdgo.GoUInt8>, stdgo.GoInt) -> { var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return @:_0 __self__.value._exportKeyingMaterial(_masterSecret, _transcript);
    @:keep
    @:tdfield
    public dynamic function _finishedHash(_baseKey:stdgo.Slice<stdgo.GoUInt8>, _transcript:stdgo._internal.hash.Hash_hash.Hash):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._finishedHash(_baseKey, _transcript);
    @:keep
    @:tdfield
    public dynamic function _trafficKey(_trafficSecret:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Slice<stdgo.GoUInt8>; } return @:_0 __self__.value._trafficKey(_trafficSecret);
    @:keep
    @:tdfield
    public dynamic function _nextTrafficSecret(_trafficSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._nextTrafficSecret(_trafficSecret);
    @:keep
    @:tdfield
    public dynamic function _extract(_newSecret:stdgo.Slice<stdgo.GoUInt8>, _currentSecret:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._extract(_newSecret, _currentSecret);
    @:keep
    @:tdfield
    public dynamic function _deriveSecret(_secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _transcript:stdgo._internal.hash.Hash_hash.Hash):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._deriveSecret(_secret, _label, _transcript);
    @:keep
    @:tdfield
    public dynamic function _expandLabel(_secret:stdgo.Slice<stdgo.GoUInt8>, _label:stdgo.GoString, _context:stdgo.Slice<stdgo.GoUInt8>, _length:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value._expandLabel(_secret, _label, _context, _length);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.crypto.tls.Tls_t_ciphersuitetls13pointer.T_cipherSuiteTLS13Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
