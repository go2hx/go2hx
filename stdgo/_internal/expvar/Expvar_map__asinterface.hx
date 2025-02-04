package stdgo._internal.expvar;
class Map__asInterface {
    @:keep
    @:tdfield
    public dynamic function do_(_f:stdgo._internal.expvar.Expvar_keyvalue.KeyValue -> Void):Void @:_0 __self__.value.do_(_f);
    @:keep
    @:tdfield
    public dynamic function delete(_key:stdgo.GoString):Void @:_0 __self__.value.delete(_key);
    @:keep
    @:tdfield
    public dynamic function addFloat(_key:stdgo.GoString, _delta:stdgo.GoFloat64):Void @:_0 __self__.value.addFloat(_key, _delta);
    @:keep
    @:tdfield
    public dynamic function add(_key:stdgo.GoString, _delta:stdgo.GoInt64):Void @:_0 __self__.value.add(_key, _delta);
    @:keep
    @:tdfield
    public dynamic function set(_key:stdgo.GoString, _av:stdgo._internal.expvar.Expvar_var.Var):Void @:_0 __self__.value.set(_key, _av);
    @:keep
    @:tdfield
    public dynamic function get(_key:stdgo.GoString):stdgo._internal.expvar.Expvar_var.Var return @:_0 __self__.value.get(_key);
    @:keep
    @:tdfield
    public dynamic function _addKey(_key:stdgo.GoString):Void @:_0 __self__.value._addKey(_key);
    @:keep
    @:tdfield
    public dynamic function init():stdgo.Ref<stdgo._internal.expvar.Expvar_map_.Map_> return @:_0 __self__.value.init();
    @:keep
    @:tdfield
    public dynamic function string():stdgo.GoString return @:_0 __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.expvar.Expvar_map_pointer.Map_Pointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
