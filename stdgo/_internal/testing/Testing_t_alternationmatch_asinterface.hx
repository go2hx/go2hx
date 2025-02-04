package stdgo._internal.testing;
class T_alternationMatch_asInterface {
    @:keep
    @:tdfield
    public dynamic function _verify(_name:stdgo.GoString, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):stdgo.Error return @:_0 __self__.value._verify(_name, _matchString);
    @:keep
    @:tdfield
    public dynamic function _matches(_name:stdgo.Slice<stdgo.GoString>, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):{ var _0 : Bool; var _1 : Bool; } return @:_0 __self__.value._matches(_name, _matchString);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.testing.Testing_t_alternationmatchpointer.T_alternationMatchPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
