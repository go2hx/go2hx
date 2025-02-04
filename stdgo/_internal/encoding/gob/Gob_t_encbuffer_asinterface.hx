package stdgo._internal.encoding.gob;
class T_encBuffer_asInterface {
    @:keep
    @:tdfield
    public dynamic function reset():Void @:_0 __self__.value.reset();
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    @:keep
    @:tdfield
    public dynamic function writeString(_s:stdgo.GoString):Void @:_0 __self__.value.writeString(_s);
    @:keep
    @:tdfield
    public dynamic function write(_p:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_p);
    @:keep
    @:tdfield
    public dynamic function _writeByte(_c:stdgo.GoUInt8):Void @:_0 __self__.value._writeByte(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.encoding.gob.Gob_t_encbufferpointer.T_encBufferPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
