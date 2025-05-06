package stdgo._internal.go.build.constraint;
class T_exprParser_asInterface {
    @:keep
    @:tdfield
    public dynamic function _lex():Void @:_0 __self__.value._lex();
    @:keep
    @:tdfield
    public dynamic function _atom():stdgo._internal.go.build.constraint.Constraint_expr.Expr return @:_0 __self__.value._atom();
    @:keep
    @:tdfield
    public dynamic function _not():stdgo._internal.go.build.constraint.Constraint_expr.Expr return @:_0 __self__.value._not();
    @:keep
    @:tdfield
    public dynamic function _and():stdgo._internal.go.build.constraint.Constraint_expr.Expr return @:_0 __self__.value._and();
    @:keep
    @:tdfield
    public dynamic function _or():stdgo._internal.go.build.constraint.Constraint_expr.Expr return @:_0 __self__.value._or();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.build.constraint.Constraint_t_exprparserpointer.T_exprParserPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
