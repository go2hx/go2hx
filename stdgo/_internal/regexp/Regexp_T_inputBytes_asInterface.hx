package stdgo._internal.regexp;
class T_inputBytes_asInterface {
    @:keep
    public dynamic function _context(_pos:stdgo.GoInt):stdgo._internal.regexp.Regexp_T_lazyFlag.T_lazyFlag return __self__.value._context(_pos);
    @:keep
    public dynamic function _index(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>, _pos:stdgo.GoInt):stdgo.GoInt return __self__.value._index(_re, _pos);
    @:keep
    public dynamic function _hasPrefix(_re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool return __self__.value._hasPrefix(_re);
    @:keep
    public dynamic function _canCheckPrefix():Bool return __self__.value._canCheckPrefix();
    @:keep
    public dynamic function _step(_pos:stdgo.GoInt):{ var _0 : stdgo.GoInt32; var _1 : stdgo.GoInt; } return __self__.value._step(_pos);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.regexp.Regexp_T_inputBytes.T_inputBytes>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}