package stdgo._internal.go.ast;
class T_inspector_asInterface {
    @:keep
    @:tdfield
    public dynamic function visit(_node:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor return @:_0 __self__.value.visit(_node);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.ast.Ast_t_inspectorpointer.T_inspectorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
