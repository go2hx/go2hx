package _internal.vendor.golang_dot_org.x.text.unicode.norm;
class Iter_asInterface {
    @:keep
    public dynamic function next():stdgo.Slice<stdgo.GoUInt8> return __self__.value.next();
    @:keep
    public dynamic function done():Bool return __self__.value.done();
    @:keep
    public dynamic function _setDone():Void __self__.value._setDone();
    @:keep
    public dynamic function pos():stdgo.GoInt return __self__.value.pos();
    @:keep
    public dynamic function _returnSlice(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.Slice<stdgo.GoUInt8> return __self__.value._returnSlice(_a, _b);
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function initString(_f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _src:stdgo.GoString):Void __self__.value.initString(_f, _src);
    @:keep
    public dynamic function init(_f:_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Form.Form, _src:stdgo.Slice<stdgo.GoUInt8>):Void __self__.value.init(_f, _src);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_Iter.Iter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
