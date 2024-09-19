package stdgo._internal.encoding.json;
class Decoder_asInterface {
    @:keep
    public dynamic function inputOffset():stdgo.GoInt64 return __self__.value.inputOffset();
    @:keep
    public dynamic function _peek():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } return __self__.value._peek();
    @:keep
    public dynamic function more():Bool return __self__.value.more();
    @:keep
    public dynamic function _tokenError(_c:stdgo.GoUInt8):{ var _0 : stdgo._internal.encoding.json.Json_Token.Token; var _1 : stdgo.Error; } return __self__.value._tokenError(_c);
    @:keep
    public dynamic function token():{ var _0 : stdgo._internal.encoding.json.Json_Token.Token; var _1 : stdgo.Error; } return __self__.value.token();
    @:keep
    public dynamic function _tokenValueEnd():Void __self__.value._tokenValueEnd();
    @:keep
    public dynamic function _tokenValueAllowed():Bool return __self__.value._tokenValueAllowed();
    @:keep
    public dynamic function _tokenPrepareForDecode():stdgo.Error return __self__.value._tokenPrepareForDecode();
    @:keep
    public dynamic function _refill():stdgo.Error return __self__.value._refill();
    @:keep
    public dynamic function _readValue():{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value._readValue();
    @:keep
    public dynamic function buffered():stdgo._internal.io.Io_Reader.Reader return __self__.value.buffered();
    @:keep
    public dynamic function decode(_v:stdgo.AnyInterface):stdgo.Error return __self__.value.decode(_v);
    @:keep
    public dynamic function disallowUnknownFields():Void __self__.value.disallowUnknownFields();
    @:keep
    public dynamic function useNumber():Void __self__.value.useNumber();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.json.Json_Decoder.Decoder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
