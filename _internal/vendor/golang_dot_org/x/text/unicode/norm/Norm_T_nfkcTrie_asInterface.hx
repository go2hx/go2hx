package _internal.vendor.golang_dot_org.x.text.unicode.norm;
class T_nfkcTrie_asInterface {
    @:keep
    public dynamic function _lookupValue(_n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 return __self__.value._lookupValue(_n, _b);
    @:keep
    public dynamic function _lookupStringUnsafe(_s:stdgo.GoString):stdgo.GoUInt16 return __self__.value._lookupStringUnsafe(_s);
    @:keep
    public dynamic function _lookupString(_s:stdgo.GoString):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } return __self__.value._lookupString(_s);
    @:keep
    public dynamic function _lookupUnsafe(_s:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16 return __self__.value._lookupUnsafe(_s);
    @:keep
    public dynamic function _lookup(_s:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoInt; } return __self__.value._lookup(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.norm.Norm_T_nfkcTrie.T_nfkcTrie>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
