package stdgo._internal.sort;
class StringSlice_asInterface {
    @:keep
    public dynamic function sort():Void __self__.value.sort();
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function search(_x:stdgo.GoString):stdgo.GoInt return __self__.value.search(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.sort.Sort_StringSlice.StringSlice>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}