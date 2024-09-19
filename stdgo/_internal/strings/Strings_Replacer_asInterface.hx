package stdgo._internal.strings;
class Replacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    @:keep
    public dynamic function _build():stdgo._internal.strings.Strings_T_replacer.T_replacer return __self__.value._build();
    @:keep
    public dynamic function _buildOnce():Void __self__.value._buildOnce();
    @:keep
    public dynamic function printTrie():stdgo.GoString return __self__.value.printTrie();
    @:keep
    public dynamic function replacer():stdgo.AnyInterface return __self__.value.replacer();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.strings.Strings_Replacer.Replacer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
