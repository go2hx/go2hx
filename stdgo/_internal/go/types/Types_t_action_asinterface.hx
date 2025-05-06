package stdgo._internal.go.types;
class T_action_asInterface {
    @:keep
    @:tdfield
    public dynamic function _describef(_pos:stdgo._internal.go.types.Types_t_positioner.T_positioner, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):Void @:_0 __self__.value._describef(_pos, _format, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_actionpointer.T_actionPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
