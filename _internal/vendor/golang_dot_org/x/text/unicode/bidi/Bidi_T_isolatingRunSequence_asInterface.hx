package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
class T_isolatingRunSequence_asInterface {
    @:keep
    public dynamic function _assertOnly(_codes:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):Void __self__.value._assertOnly(..._codes);
    @:keep
    public dynamic function _findRunLimit(_index:stdgo.GoInt, _validSet:haxe.Rest<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Class_.Class_>):stdgo.GoInt return __self__.value._findRunLimit(_index, ..._validSet);
    @:keep
    public dynamic function _applyLevelsAndTypes():Void __self__.value._applyLevelsAndTypes();
    @:keep
    public dynamic function _resolveImplicitLevels():Void __self__.value._resolveImplicitLevels();
    @:keep
    public dynamic function _resolveNeutralTypes():Void __self__.value._resolveNeutralTypes();
    @:keep
    public dynamic function _resolveWeakTypes():Void __self__.value._resolveWeakTypes();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_isolatingRunSequence.T_isolatingRunSequence>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
