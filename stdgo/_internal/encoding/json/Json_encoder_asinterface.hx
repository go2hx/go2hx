package stdgo._internal.encoding.json;
class Encoder_asInterface {
    @:keep
    @:tdfield
    public dynamic function setEscapeHTML(_on:Bool):Void @:_0 __self__.value.setEscapeHTML(_on);
    @:keep
    @:tdfield
    public dynamic function setIndent(_prefix:stdgo.GoString, _indent:stdgo.GoString):Void @:_0 __self__.value.setIndent(_prefix, _indent);
    @:keep
    @:tdfield
    public dynamic function encode(_v:stdgo.AnyInterface):stdgo.Error return @:_0 __self__.value.encode(_v);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.json.Json_encoderpointer.EncoderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
