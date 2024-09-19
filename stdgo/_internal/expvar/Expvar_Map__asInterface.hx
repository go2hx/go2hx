package stdgo._internal.expvar;
class Map__asInterface {
    @:keep
    public dynamic function do_(_f:stdgo._internal.expvar.Expvar_KeyValue.KeyValue -> Void):Void __self__.value.do_(_f);
    @:keep
    public dynamic function delete(_key:stdgo.GoString):Void __self__.value.delete(_key);
    @:keep
    public dynamic function addFloat(_key:stdgo.GoString, _delta:stdgo.GoFloat64):Void __self__.value.addFloat(_key, _delta);
    @:keep
    public dynamic function add(_key:stdgo.GoString, _delta:stdgo.GoInt64):Void __self__.value.add(_key, _delta);
    @:keep
    public dynamic function set(_key:stdgo.GoString, _av:stdgo._internal.expvar.Expvar_Var.Var):Void __self__.value.set(_key, _av);
    @:keep
    public dynamic function get(_key:stdgo.GoString):stdgo._internal.expvar.Expvar_Var.Var return __self__.value.get(_key);
    @:keep
    public dynamic function _addKey(_key:stdgo.GoString):Void __self__.value._addKey(_key);
    @:keep
    public dynamic function init():stdgo.Ref<stdgo._internal.expvar.Expvar_Map_.Map_> return __self__.value.init();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.expvar.Expvar_Map_.Map_>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
