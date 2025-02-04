package stdgo._internal.runtime.pprof;
class Profile_asInterface {
    @:keep
    @:tdfield
    public dynamic function writeTo(_w:stdgo._internal.io.Io_writer.Writer, _debug:stdgo.GoInt):stdgo.Error return @:_0 __self__.value.writeTo(_w, _debug);
    @:keep
    @:tdfield
    public dynamic function remove(_value:stdgo.AnyInterface):Void @:_0 __self__.value.remove(_value);
    @:keep
    @:tdfield
    public dynamic function add(_value:stdgo.AnyInterface, _skip:stdgo.GoInt):Void @:_0 __self__.value.add(_value, _skip);
    @:keep
    @:tdfield
    public dynamic function count():stdgo.GoInt return @:_0 __self__.value.count();
    @:keep
    @:tdfield
    public dynamic function name():stdgo.GoString return @:_0 __self__.value.name();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.runtime.pprof.Pprof_profilepointer.ProfilePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
