package stdgo._internal.net.http;
class T_response_asInterface {
    @:keep
    @:tdfield
    public dynamic function closeNotify():stdgo.Chan<Bool> return @:_0 __self__.value.closeNotify();
    @:keep
    @:tdfield
    public dynamic function hijack():{ var _0 : stdgo._internal.net.Net_conn.Conn; var _1 : stdgo.Ref<stdgo._internal.bufio.Bufio_readwriter.ReadWriter>; var _2 : stdgo.Error; } return @:_0 __self__.value.hijack();
    @:keep
    @:tdfield
    public dynamic function flushError():stdgo.Error return @:_0 __self__.value.flushError();
    @:keep
    @:tdfield
    public dynamic function flush():Void @:_0 __self__.value.flush();
    @:keep
    @:tdfield
    public dynamic function writeString(_data:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.writeString(_data);
    @:keep
    @:tdfield
    public dynamic function write(_data:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_data);
    @:keep
    @:tdfield
    public dynamic function writeHeader(_code:stdgo.GoInt):Void @:_0 __self__.value.writeHeader(_code);
    @:keep
    @:tdfield
    public dynamic function header():stdgo._internal.net.http.Http_header.Header return @:_0 __self__.value.header();
    @:keep
    @:tdfield
    public dynamic function readFrom(_src:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return @:_0 __self__.value.readFrom(_src);
    @:keep
    @:tdfield
    public dynamic function enableFullDuplex():stdgo.Error return @:_0 __self__.value.enableFullDuplex();
    @:keep
    @:tdfield
    public dynamic function setWriteDeadline(_deadline:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setWriteDeadline(_deadline);
    @:keep
    @:tdfield
    public dynamic function setReadDeadline(_deadline:stdgo._internal.time.Time_time.Time):stdgo.Error return @:_0 __self__.value.setReadDeadline(_deadline);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_responsepointer.T_responsePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
