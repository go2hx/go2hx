package stdgo._internal.regexp;
class T_queueOnePass_asInterface {
    @:keep
    @:tdfield
    public dynamic function _insertNew(_u:stdgo.GoUInt32):Void @:_0 __self__.value._insertNew(_u);
    @:keep
    @:tdfield
    public dynamic function _insert(_u:stdgo.GoUInt32):Void @:_0 __self__.value._insert(_u);
    @:keep
    @:tdfield
    public dynamic function _contains(_u:stdgo.GoUInt32):Bool return @:_0 __self__.value._contains(_u);
    @:keep
    @:tdfield
    public dynamic function _clear():Void @:_0 __self__.value._clear();
    @:keep
    @:tdfield
    public dynamic function _next():stdgo.GoUInt32 return @:_0 __self__.value._next();
    @:keep
    @:tdfield
    public dynamic function _empty():Bool return @:_0 __self__.value._empty();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.regexp.Regexp_t_queueonepasspointer.T_queueOnePassPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
