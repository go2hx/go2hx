package stdgo._internal.strings;
class T_stringFinder_asInterface {
    @:keep
    @:tdfield
    public dynamic function _next(_text:stdgo.GoString):stdgo.GoInt return @:_0 __self__.value._next(_text);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.strings.Strings_T_stringFinderPointer.T_stringFinderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
