package stdgo._internal.go.build.constraint;
class TagExpr_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function eval(_ok:stdgo.GoString -> Bool):Bool return @:_0 __self__.value.eval(_ok);
    @:keep
    @:tdfield
    public dynamic function _isExpr():Void @:_0 __self__.value._isExpr();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.build.constraint.Constraint_tagexprpointer.TagExprPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
