package stdgo._internal.regexp.syntax;
class Inst_asInterface {
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function matchEmptyWidth(_before:stdgo.GoInt32, _after:stdgo.GoInt32):Bool return @:_0 __self__.value.matchEmptyWidth(_before, _after);
    @:keep
    @:tdfield
    public dynamic function matchRunePos(_r:stdgo.GoInt32):stdgo.GoInt return @:_0 __self__.value.matchRunePos(_r);
    @:keep
    @:tdfield
    public dynamic function matchRune(_r:stdgo.GoInt32):Bool return @:_0 __self__.value.matchRune(_r);
    @:keep
    @:tdfield
    public dynamic function _op():stdgo._internal.regexp.syntax.Syntax_instop.InstOp return @:_0 __self__.value._op();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.syntax.Syntax_instpointer.InstPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
