package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
class T_notAnExpr_asInterface {
    @:keep
    public dynamic function _exprNode():Void __self__.value._exprNode();
    @:keep
    public dynamic function end():stdgo._internal.go.token.Token_Pos.Pos return __self__.value.end();
    @:keep
    public dynamic function pos():stdgo._internal.go.token.Token_Pos.Pos return __self__.value.pos();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.reflect_test.Reflect_test_T_notAnExpr.T_notAnExpr>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
