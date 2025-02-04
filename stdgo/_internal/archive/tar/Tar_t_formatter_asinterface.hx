package stdgo._internal.archive.tar;
class T_formatter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _formatOctal(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):Void @:_0 __self__.value._formatOctal(_b, _x);
    @:keep
    @:tdfield
    public dynamic function _formatNumeric(_b:stdgo.Slice<stdgo.GoUInt8>, _x:stdgo.GoInt64):Void @:_0 __self__.value._formatNumeric(_b, _x);
    @:keep
    @:tdfield
    public dynamic function _formatString(_b:stdgo.Slice<stdgo.GoUInt8>, _s:stdgo.GoString):Void @:_0 __self__.value._formatString(_b, _s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.archive.tar.Tar_t_formatterpointer.T_formatterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
