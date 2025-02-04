package stdgo._internal.fmt;
class T_buffer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _writeRune(_r:stdgo.GoInt32):Void @:_0 __self__.value._writeRune(_r);
    @:keep
    @:tdfield
    public dynamic function _writeByte(_c:stdgo.GoUInt8):Void @:_0 __self__.value._writeByte(_c);
    @:keep
    @:tdfield
    public dynamic function _writeString(_s:stdgo.GoString):Void @:_0 __self__.value._writeString(_s);
    @:keep
    @:tdfield
    public dynamic function _write(_p:stdgo.Slice<stdgo.GoUInt8>):Void @:_0 __self__.value._write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.fmt.Fmt_t_bufferpointer.T_bufferPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
