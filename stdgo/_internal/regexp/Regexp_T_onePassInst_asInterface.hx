package stdgo._internal.regexp;
class T_onePassInst_asInterface {
    @:embedded
    public dynamic function _op():stdgo._internal.regexp.syntax.Syntax_InstOp.InstOp return __self__.value._op();
    @:embedded
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:embedded
    public dynamic function matchRunePos(_nameOff:stdgo.GoInt32):stdgo.GoInt return __self__.value.matchRunePos(_nameOff);
    @:embedded
    public dynamic function matchRune(_nameOff:stdgo.GoInt32):Bool return __self__.value.matchRune(_nameOff);
    @:embedded
    public dynamic function matchEmptyWidth(_old:stdgo.GoInt32, _new:stdgo.GoInt32):Bool return __self__.value.matchEmptyWidth(_old, _new);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.regexp.Regexp_T_onePassInst.T_onePassInst>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
