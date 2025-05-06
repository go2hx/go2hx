package stdgo._internal.go.types;
class Context_asInterface {
    @:keep
    @:tdfield
    public dynamic function _getID(_t:stdgo._internal.go.types.Types_type_.Type_):stdgo.GoInt return @:_0 __self__.value._getID(_t);
    @:keep
    @:tdfield
    public dynamic function _update(_h:stdgo.GoString, _orig:stdgo._internal.go.types.Types_type_.Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>, _inst:stdgo._internal.go.types.Types_type_.Type_):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._update(_h, _orig, _targs, _inst);
    @:keep
    @:tdfield
    public dynamic function _lookup(_h:stdgo.GoString, _orig:stdgo._internal.go.types.Types_type_.Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._lookup(_h, _orig, _targs);
    @:keep
    @:tdfield
    public dynamic function _instanceHash(_orig:stdgo._internal.go.types.Types_type_.Type_, _targs:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>):stdgo.GoString return @:_0 __self__.value._instanceHash(_orig, _targs);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_contextpointer.ContextPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
