package stdgo._internal.testing;
class T_matcher_asInterface {
    @:keep
    @:tdfield
    public dynamic function _unique(_parent:stdgo.GoString, _subname:stdgo.GoString):stdgo.GoString return @:_0 __self__.value._unique(_parent, _subname);
    @:keep
    @:tdfield
    public dynamic function _clearSubNames():Void @:_0 __self__.value._clearSubNames();
    @:keep
    @:tdfield
    public dynamic function _fullName(_c:stdgo.Ref<stdgo._internal.testing.Testing_t_common.T_common>, _subname:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; var _2 : Bool; } return @:_0 __self__.value._fullName(_c, _subname);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.Testing_t_matcherpointer.T_matcherPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
