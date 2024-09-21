package _internal.vendor.golang_dot_org.x.text.transform;
class T_chain_asInterface {
    @:keep
    public dynamic function transform(_dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.transform(_dst, _src, _atEOF);
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function _fatalError(_errIndex:stdgo.GoInt, _err:stdgo.Error):Void __self__.value._fatalError(_errIndex, _err);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.transform.Transform_T_chain.T_chain>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
