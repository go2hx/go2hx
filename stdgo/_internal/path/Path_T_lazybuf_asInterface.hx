package stdgo._internal.path;
class T_lazybuf_asInterface {
    @:keep
    public dynamic function _string():stdgo.GoString return __self__.value._string();
    @:keep
    public dynamic function _append(_c:stdgo.GoUInt8):Void __self__.value._append(_c);
    @:keep
    public dynamic function _index(_i:stdgo.GoInt):stdgo.GoUInt8 return __self__.value._index(_i);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.path.Path_T_lazybuf.T_lazybuf>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
