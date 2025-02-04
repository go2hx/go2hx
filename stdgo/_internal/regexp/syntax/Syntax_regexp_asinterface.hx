package stdgo._internal.regexp.syntax;
class Regexp_asInterface {
    @:keep
    @:tdfield
    public dynamic function simplify():stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> return @:_0 __self__.value.simplify();
    @:keep
    @:tdfield
    public dynamic function _capNames(_names:stdgo.Slice<stdgo.GoString>):Void @:_0 __self__.value._capNames(_names);
    @:keep
    @:tdfield
    public dynamic function capNames():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.capNames();
    @:keep
    @:tdfield
    public dynamic function maxCap():stdgo.GoInt return @:_0 __self__.value.maxCap();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    @:keep
    @:tdfield
    public dynamic function equal(_y:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>):Bool return @:_0 __self__.value.equal(_y);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.syntax.Syntax_regexppointer.RegexpPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
