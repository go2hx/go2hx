package stdgo._internal.go.printer;
class T_visitor_asInterface {
    @:keep
    @:tdfield
    public dynamic function visit(_n:stdgo._internal.go.ast.Ast_node.Node):stdgo._internal.go.ast.Ast_visitor.Visitor return @:_0 __self__.value.visit(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.printer.Printer_t_visitorpointer.T_visitorPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
