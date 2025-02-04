package stdgo._internal.internal.lazyregexp;
class Regexp_asInterface {
    @:keep
    @:tdfield
    public dynamic function subexpNames():stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.subexpNames();
    @:keep
    @:tdfield
    public dynamic function matchString(_s:stdgo.GoString):Bool return @:_0 __self__.value.matchString(_s);
    @:keep
    @:tdfield
    public dynamic function findAllString(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.findAllString(_s, _n);
    @:keep
    @:tdfield
    public dynamic function findString(_s:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.findString(_s);
    @:keep
    @:tdfield
    public dynamic function replaceAllString(_src:stdgo.GoString, _repl:stdgo.GoString):stdgo.GoString return @:_0 __self__.value.replaceAllString(_src, _repl);
    @:keep
    @:tdfield
    public dynamic function findStringSubmatchIndex(_s:stdgo.GoString):stdgo.Slice<stdgo.GoInt> return @:_0 __self__.value.findStringSubmatchIndex(_s);
    @:keep
    @:tdfield
    public dynamic function findStringSubmatch(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString> return @:_0 __self__.value.findStringSubmatch(_s);
    @:keep
    @:tdfield
    public dynamic function findSubmatch(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> return @:_0 __self__.value.findSubmatch(_s);
    @:keep
    @:tdfield
    public dynamic function _build():Void @:_0 __self__.value._build();
    @:keep
    @:tdfield
    public dynamic function _re():stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp> return @:_0 __self__.value._re();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.lazyregexp.Lazyregexp_regexppointer.RegexpPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
