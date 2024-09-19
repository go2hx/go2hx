package stdgo._internal.encoding.gob;
class T_encBuffer_asInterface {
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return __self__.value.bytes();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):Void __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function _writeByte(_c:stdgo.GoUInt8):Void __self__.value._writeByte(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.encoding.gob.Gob_T_encBuffer.T_encBuffer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
