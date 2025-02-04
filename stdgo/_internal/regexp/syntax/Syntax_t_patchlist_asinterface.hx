package stdgo._internal.regexp.syntax;
class T_patchList_asInterface {
    @:keep
    @:tdfield
    public dynamic function _append(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _l2:stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList):stdgo._internal.regexp.syntax.Syntax_t_patchlist.T_patchList return @:_0 __self__.value._append(_p, _l2);
    @:keep
    @:tdfield
    public dynamic function _patch(_p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>, _val:stdgo.GoUInt32):Void @:_0 __self__.value._patch(_p, _val);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.syntax.Syntax_t_patchlistpointer.T_patchListPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
