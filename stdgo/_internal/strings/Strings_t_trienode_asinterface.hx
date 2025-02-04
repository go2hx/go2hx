package stdgo._internal.strings;
class T_trieNode_asInterface {
    @:keep
    @:tdfield
    public dynamic function _add(_key:stdgo.GoString, _val:stdgo.GoString, _priority:stdgo.GoInt, _r:stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>):Void @:_0 __self__.value._add(_key, _val, _priority, _r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.strings.Strings_t_trienodepointer.T_trieNodePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
