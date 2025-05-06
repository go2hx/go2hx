package stdgo._internal.go.types;
class Package_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function setImports(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>>):Void @:_0 __self__.value.setImports(_list);
    @:keep
    @:tdfield
    public dynamic function imports():stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_package.Package>> return @:_0 __self__.value.imports();
    @:keep
    @:tdfield
    public dynamic function markComplete():Void @:_0 __self__.value.markComplete();
    @:keep
    @:tdfield
    public dynamic function complete():Bool return @:_0 __self__.value.complete();
    @:keep
    @:tdfield
    public dynamic function scope():stdgo.Ref<stdgo._internal.go.types.Types_scope.Scope> return @:_0 __self__.value.scope();
    @:keep
    @:tdfield
    public dynamic function goVersion():stdgo.GoString return @:_0 __self__.value.goVersion();
    @:keep
    @:tdfield
    public dynamic function setName(_name:stdgo.GoString):Void @:_0 __self__.value.setName(_name);
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    @:keep
    @:tdfield
    public dynamic function path():stdgo.GoString return @:_0 __self__.value.path();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.types.Types_packagepointer.PackagePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
