package stdgo._internal.runtime.pprof;
class Profile_asInterface {
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io_Writer.Writer, _debug:stdgo.GoInt):stdgo.Error return __self__.value.writeTo(_w, _debug);
    @:keep
    public dynamic function remove(_value:stdgo.AnyInterface):Void __self__.value.remove(_value);
    @:keep
    public dynamic function add(_value:stdgo.AnyInterface, _skip:stdgo.GoInt):Void __self__.value.add(_value, _skip);
    @:keep
    public dynamic function count():stdgo.GoInt return __self__.value.count();
    @:keep
    public dynamic function name():stdgo.GoString return __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.runtime.pprof.Pprof_Profile.Profile>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
