package stdgo._internal.go.types;
class T_version_asInterface {
    @:keep
    @:tdfield
    public dynamic function _after(_u:stdgo._internal.go.types.Types_t_version.T_version):Bool return @:_0 __self__.value._after(_u);
    @:keep
    @:tdfield
    public dynamic function _before(_u:stdgo._internal.go.types.Types_t_version.T_version):Bool return @:_0 __self__.value._before(_u);
    @:keep
    @:tdfield
    public dynamic function _equal(_u:stdgo._internal.go.types.Types_t_version.T_version):Bool return @:_0 __self__.value._equal(_u);
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_t_versionpointer.T_versionPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
