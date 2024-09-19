package stdgo._internal.regexp.syntax;
class Regexp_asInterface {
    @:keep
    public dynamic function simplify():stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> return __self__.value.simplify();
    @:keep
    public dynamic function _capNames(_names:stdgo.Slice<stdgo.GoString>):Void __self__.value._capNames(_names);
    @:keep
    public dynamic function capNames():stdgo.Slice<stdgo.GoString> return __self__.value.capNames();
    @:keep
    public dynamic function maxCap():stdgo.GoInt return __self__.value.maxCap();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function equal(_y:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>):Bool return __self__.value.equal(_y);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
