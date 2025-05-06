package stdgo._internal.go.internal.gcimporter;
class T_iimporter_asInterface {
    @:keep
    @:tdfield
    public dynamic function _typAt(_off:stdgo.GoUInt64, _base:stdgo.Ref<stdgo._internal.go.types.Types_named.Named>):stdgo._internal.go.types.Types_type_.Type_ return @:_0 __self__.value._typAt(_off, _base);
    @:keep
    @:tdfield
    public dynamic function _pkgAt(_off:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.go.types.Types_package.Package> return @:_0 __self__.value._pkgAt(_off);
    @:keep
    @:tdfield
    public dynamic function _stringAt(_off:stdgo.GoUInt64):stdgo.GoString return @:_0 __self__.value._stringAt(_off);
    @:keep
    @:tdfield
    public dynamic function _doDecl(_pkg:stdgo.Ref<stdgo._internal.go.types.Types_package.Package>, _name:stdgo.GoString):Void @:_0 __self__.value._doDecl(_pkg, _name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.internal.gcimporter.Gcimporter_t_iimporterpointer.T_iimporterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
