package stdgo._internal.net.http;
class T_http2pipe_asInterface {
    @:keep
    @:tdfield
    public dynamic function done():stdgo.Chan<stdgo._internal.net.http.Http_t_http2goawayflowerror.T_http2goAwayFlowError> return @:_0 __self__.value.done();
    @:keep
    @:tdfield
    public dynamic function err():stdgo.Error return @:_0 __self__.value.err();
    @:keep
    @:tdfield
    public dynamic function breakWithError(_err:stdgo.Error):Void @:_0 __self__.value.breakWithError(_err);
    @:keep
    @:tdfield
    public dynamic function closeWithError(_err:stdgo.Error):Void @:_0 __self__.value.closeWithError(_err);
    @:keep
    @:tdfield
    public dynamic function write(_d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.write(_d);
    @:keep
    @:tdfield
    public dynamic function read(_d:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return @:_0 __self__.value.read(_d);
    @:keep
    @:tdfield
    public dynamic function len():stdgo.GoInt return @:_0 __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2pipepointer.T_http2pipePointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
