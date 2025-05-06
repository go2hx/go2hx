package stdgo._internal.go.token;
class Token_asInterface {
    @:keep
    @:tdfield
    public dynamic function isKeyword():Bool return @:_0 __self__.value.isKeyword();
    @:keep
    @:tdfield
    public dynamic function isOperator():Bool return @:_0 __self__.value.isOperator();
    @:keep
    @:tdfield
    public dynamic function isLiteral():Bool return @:_0 __self__.value.isLiteral();
    @:keep
    @:tdfield
    public dynamic function precedence():stdgo.GoInt return @:_0 __self__.value.precedence();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.go.token.Token_tokenpointer.TokenPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
