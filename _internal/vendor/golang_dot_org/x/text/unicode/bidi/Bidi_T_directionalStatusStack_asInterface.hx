package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
class T_directionalStatusStack_asInterface {
    @:keep
    public dynamic function _lastDirectionalIsolateStatus():Bool return __self__.value._lastDirectionalIsolateStatus();
    @:keep
    public dynamic function _lastDirectionalOverrideStatus():_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_ return __self__.value._lastDirectionalOverrideStatus();
    @:keep
    public dynamic function _lastEmbeddingLevel():_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level return __self__.value._lastEmbeddingLevel();
    @:keep
    public dynamic function _push(_level:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_level.T_level, _overrideStatus:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_, _isolateStatus:Bool):Void __self__.value._push(_level, _overrideStatus, _isolateStatus);
    @:keep
    public dynamic function _depth():stdgo.GoInt return __self__.value._depth();
    @:keep
    public dynamic function _pop():Void __self__.value._pop();
    @:keep
    public dynamic function _empty():Void __self__.value._empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_directionalStatusStack.T_directionalStatusStack>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
