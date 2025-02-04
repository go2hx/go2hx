package stdgo._internal.internal.coverage.stringtab;
class Writer_asInterface {
    @:keep
    @:tdfield
    public dynamic function freeze():Void @:_0 __self__.value.freeze();
    @:keep
    @:tdfield
    public dynamic function write(_w:stdgo._internal.io.Io_writer.Writer):stdgo.Error return @:_0 __self__.value.write(_w);
    @:keep
    @:tdfield
    public dynamic function size():stdgo.GoUInt32 return @:_0 __self__.value.size();
    @:keep
    @:tdfield
    public dynamic function lookup(_s:stdgo.GoString):stdgo.GoUInt32 return @:_0 __self__.value.lookup(_s);
    @:keep
    @:tdfield
    public dynamic function nentries():stdgo.GoUInt32 return @:_0 __self__.value.nentries();
    @:keep
    @:tdfield
    public dynamic function initWriter():Void @:_0 __self__.value.initWriter();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.stringtab.Stringtab_writerpointer.WriterPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
