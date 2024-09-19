package stdgo._internal.regexp.syntax;
class Inst_asInterface {
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function matchEmptyWidth(_before:stdgo.GoInt32, _after:stdgo.GoInt32):Bool return __self__.value.matchEmptyWidth(_before, _after);
    @:keep
    public dynamic function matchRunePos(_r:stdgo.GoInt32):stdgo.GoInt return __self__.value.matchRunePos(_r);
    @:keep
    public dynamic function matchRune(_r:stdgo.GoInt32):Bool return __self__.value.matchRune(_r);
    @:keep
    public dynamic function _op():stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp return __self__.value._op();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.regexp.syntax.Syntax_Inst.Inst>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
