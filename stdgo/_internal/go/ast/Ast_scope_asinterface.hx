package stdgo._internal.go.ast;
class Scope_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function insert(_obj:stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object>):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> return @:_0 __self__.value.insert(_obj);
    @:keep
    @:tdfield
    public dynamic function lookup(_name:stdgo.GoString):stdgo.Ref<stdgo._internal.go.ast.Ast_object.Object> return @:_0 __self__.value.lookup(_name);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.ast.Ast_scopepointer.ScopePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
