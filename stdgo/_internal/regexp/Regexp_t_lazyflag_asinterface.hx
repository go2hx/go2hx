package stdgo._internal.regexp;
class T_lazyFlag_asInterface {
    @:keep
    @:tdfield
    public dynamic function _match(_op:stdgo._internal.regexp.syntax.Syntax_emptyop.EmptyOp):Bool return @:_0 __self__.value._match(_op);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.Regexp_t_lazyflagpointer.T_lazyFlagPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
