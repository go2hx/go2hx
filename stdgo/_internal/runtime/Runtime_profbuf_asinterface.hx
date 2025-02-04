package stdgo._internal.runtime;
class ProfBuf_asInterface {
    @:keep
    @:tdfield
    public dynamic function close():Void @:_0 __self__.value.close();
    @:keep
    @:tdfield
    public dynamic function read(_mode:stdgo._internal.runtime.Runtime_t_profbufreadmode.T_profBufReadMode):{ var _0 : stdgo.Slice<stdgo.GoUInt64>; var _1 : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>; var _2 : Bool; } return @:_0 __self__.value.read(_mode);
    @:keep
    @:tdfield
    public dynamic function write(_tag:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _now:stdgo.GoInt64, _hdr:stdgo.Slice<stdgo.GoUInt64>, _stk:stdgo.Slice<stdgo.GoUIntptr>):Void @:_0 __self__.value.write(_tag, _now, _hdr, _stk);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.Runtime_profbufpointer.ProfBufPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
