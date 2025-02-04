package stdgo._internal.bufio;
class Scanner_asInterface {
    @:keep
    @:tdfield
    public dynamic function split(_split:stdgo._internal.bufio.Bufio_splitfunc.SplitFunc):Void @:_0 __self__.value.split(_split);
    @:keep
    @:tdfield
    public dynamic function buffer(_buf:stdgo.Slice<stdgo.GoUInt8>, _max:stdgo.GoInt):Void @:_0 __self__.value.buffer(_buf, _max);
    @:keep
    @:tdfield
    public dynamic function _setErr(_err:stdgo.Error):Void @:_0 __self__.value._setErr(_err);
    @:keep
    @:tdfield
    public dynamic function _advance(_n:stdgo.GoInt):Bool return @:_0 __self__.value._advance(_n);
    @:keep
    @:tdfield
    public dynamic function scan():Bool return @:_0 __self__.value.scan();
    @:keep
    @:tdfield
    public dynamic function text():stdgo.GoString return @:_0 __self__.value.text();
    @:keep
    @:tdfield
    public dynamic function bytes():stdgo.Slice<stdgo.GoUInt8> return @:_0 __self__.value.bytes();
    @:keep
    @:tdfield
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    @:keep
    @:tdfield
    public dynamic function errOrEOF():stdgo.Error return @:_0 __self__.value.errOrEOF();
    @:keep
    @:tdfield
    public dynamic function maxTokenSize(_n:stdgo.GoInt):Void @:_0 __self__.value.maxTokenSize(_n);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.bufio.Bufio_scannerpointer.ScannerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
