package stdgo._internal.testing;
class T_matcher_asInterface {
    @:keep
    public dynamic function _unique(_parent:stdgo.GoString, _subname:stdgo.GoString):stdgo.GoString return __self__.value._unique(_parent, _subname);
    @:keep
    public dynamic function _clearSubNames():Void __self__.value._clearSubNames();
    @:keep
    public dynamic function _fullName(_c:stdgo.Ref<stdgo._internal.testing.Testing_T_common.T_common>, _subname:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } return __self__.value._fullName(_c, _subname);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_T_matcher.T_matcher>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
