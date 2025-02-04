package stdgo._internal.internal.singleflight;
class Group_asInterface {
    @:keep
    @:tdfield
    public dynamic function forgetUnshared(_key:stdgo.GoString):Bool return @:_0 __self__.value.forgetUnshared(_key);
    @:keep
    @:tdfield
    public dynamic function _doCall(_c:stdgo.Ref<stdgo._internal.internal.singleflight.Singleflight_t_call.T_call>, _key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):Void @:_0 __self__.value._doCall(_c, _key, _fn);
    @:keep
    @:tdfield
    public dynamic function doChan(_key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):stdgo.Chan<stdgo._internal.internal.singleflight.Singleflight_result.Result> return @:_0 __self__.value.doChan(_key, _fn);
    @:keep
    @:tdfield
    public dynamic function do_(_key:stdgo.GoString, _fn:() -> { var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; }):{ var _0 : stdgo.AnyInterface; var _1 : stdgo.Error; var _2 : Bool; } return @:_0 __self__.value.do_(_key, _fn);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.singleflight.Singleflight_grouppointer.GroupPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
