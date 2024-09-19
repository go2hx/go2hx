package stdgo._internal.encoding.base64;
class Encoding_asInterface {
    @:keep
    public dynamic function decodedLen(_n:stdgo.GoInt):stdgo.GoInt return __self__.value.decodedLen(_n);
    @:keep
    public dynamic function decode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.decode(_dst, _src);
    @:keep
    public dynamic function decodeString(_s:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } return __self__.value.decodeString(_s);
    @:keep
    public dynamic function _decodeQuantum(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _si:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value._decodeQuantum(_dst, _src, _si);
    @:keep
    public dynamic function encodedLen(_n:stdgo.GoInt):stdgo.GoInt return __self__.value.encodedLen(_n);
    @:keep
    public dynamic function encodeToString(_src:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoString return __self__.value.encodeToString(_src);
    @:keep
    public dynamic function encode(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.encode(_dst, _src);
    @:keep
    public dynamic function strict():stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding> return __self__.value.strict();
    @:keep
    public dynamic function withPadding(_padding:stdgo.GoInt32):stdgo.Ref<stdgo._internal.encoding.base64.Base64_Encoding.Encoding> return __self__.value.withPadding(_padding);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.base64.Base64_Encoding.Encoding>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
