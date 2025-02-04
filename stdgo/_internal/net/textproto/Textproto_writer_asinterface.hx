package stdgo._internal.net.textproto;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function _closeDot():Void @:_0 __self__.value._closeDot();
    @:keep
    @:tdfield
    public dynamic function dotWriter():stdgo._internal.io.Io_writecloser.WriteCloser return @:_0 __self__.value.dotWriter();
    @:keep
    @:tdfield
    public dynamic function printfLine(_format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.Error return @:_0 __self__.value.printfLine(_format, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.textproto.Textproto_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
