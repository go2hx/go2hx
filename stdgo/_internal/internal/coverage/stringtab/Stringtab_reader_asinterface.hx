package stdgo._internal.internal.coverage.stringtab;
class Reader_asInterface {
    @:keep
    @:tdfield
    public dynamic function get(_idx:stdgo.GoUInt32):stdgo.GoString return @:_0 __self__.value.get(_idx);
    @:keep
    @:tdfield
    public dynamic function entries():stdgo.GoInt return @:_0 __self__.value.entries();
    @:keep
    @:tdfield
    public dynamic function read():Void @:_0 __self__.value.read();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.internal.coverage.stringtab.Stringtab_readerpointer.ReaderPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
