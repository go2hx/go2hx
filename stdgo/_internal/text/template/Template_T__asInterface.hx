package stdgo._internal.text.template;
class T__asInterface {
    @:keep
    public dynamic function getU():stdgo.Ref<stdgo._internal.text.template.Template_U.U> return __self__.value.getU();
    @:keep
    public dynamic function myError(_error:Bool):{ var _0 : Bool; var _1 : stdgo.Error; } return __self__.value.myError(_error);
    @:keep
    public dynamic function madd(_a:stdgo.GoInt, _b:stdgo.Slice<stdgo.GoInt>):stdgo.Slice<stdgo.GoInt> return __self__.value.madd(_a, _b);
    @:keep
    public dynamic function copy():stdgo.Ref<stdgo._internal.text.template.Template_T_.T_> return __self__.value.copy();
    @:keep
    public dynamic function method3(_v:stdgo.AnyInterface):stdgo.GoString return __self__.value.method3(_v);
    @:keep
    public dynamic function method2(_a:stdgo.GoUInt16, _b:stdgo.GoString):stdgo.GoString return __self__.value.method2(_a, _b);
    @:keep
    public dynamic function method1(_a:stdgo.GoInt):stdgo.GoInt return __self__.value.method1(_a);
    @:keep
    public dynamic function method0():stdgo.GoString return __self__.value.method0();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.text.template.Template_T_.T_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
