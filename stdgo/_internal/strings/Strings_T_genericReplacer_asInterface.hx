package stdgo._internal.strings;
class T_genericReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    @:keep
    public dynamic function _lookup(_s:stdgo.GoString, _ignoreRoot:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : Bool; } return __self__.value._lookup(_s, _ignoreRoot);
    @:keep
    public dynamic function _printNode(_t:stdgo.Ref<stdgo._internal.strings.Strings_T_trieNode.T_trieNode>, _depth:stdgo.GoInt):stdgo.GoString return __self__.value._printNode(_t, _depth);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.strings.Strings_T_genericReplacer.T_genericReplacer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}