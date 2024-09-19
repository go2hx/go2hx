package stdgo._internal.runtime;
class ProfBuf_asInterface {
    @:keep
    public dynamic function close():Void __self__.value.close();
    @:keep
    public dynamic function read(_mode:stdgo._internal.runtime.Runtime_T_profBufReadMode.T_profBufReadMode):{ var _0 : stdgo.Slice<stdgo.GoUInt64>; var _1 : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>; var _2 : Bool; } return __self__.value.read(_mode);
    @:keep
    public dynamic function write(_tag:stdgo.Pointer<stdgo._internal.unsafe.Unsafe.UnsafePointer>, _now:stdgo.GoInt64, _hdr:stdgo.Slice<stdgo.GoUInt64>, _stk:stdgo.Slice<stdgo.GoUIntptr>):Void __self__.value.write(_tag, _now, _hdr, _stk);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.Runtime_ProfBuf.ProfBuf>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
