package stdgo._internal.internal.singleflight;
class Group_asInterface {
    @:keep
    public dynamic function forgetUnshared(_key:stdgo.GoString):Bool return __self__.value.forgetUnshared(_key);
    @:keep
    public dynamic function _doCall(_c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_T_call.T_call>, _key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):Void __self__.value._doCall(_c, _key, _fn);
    @:keep
    public dynamic function doChan(_key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_Result.Result> return __self__.value.doChan(_key, _fn);
    @:keep
    public dynamic function do_(_key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; var _2 : Bool; } return __self__.value.do_(_key, _fn);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.internal.singleflight.Singleflight_Group.Group>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
