package stdgo._internal.testing;
class T_alternationMatch_asInterface {
    @:keep
    public dynamic function _verify(_name:stdgo.GoString, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):stdgo.Error return __self__.value._verify(_name, _matchString);
    @:keep
    public dynamic function _matches(_name:stdgo.Slice<stdgo.GoString>, _matchString:(stdgo.GoString, stdgo.GoString) -> { var _0 : Bool; var _1 : stdgo.Error; }):{ var _0 : Bool; var _1 : Bool; } return __self__.value._matches(_name, _matchString);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.testing.Testing_T_alternationMatch.T_alternationMatch>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
