package stdgo._internal.net.http;
class T_http2randomWriteScheduler_asInterface {
    @:keep
    public dynamic function pop():{ var _0 : stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest; var _1 : Bool; } return __self__.value.pop();
    @:keep
    public dynamic function push(_wr:stdgo._internal.net.http.Http_T_http2FrameWriteRequest.T_http2FrameWriteRequest):Void __self__.value.push(_wr);
    @:keep
    public dynamic function adjustStream(_streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam):Void __self__.value.adjustStream(_streamID, _priority);
    @:keep
    public dynamic function closeStream(_streamID:stdgo.GoUInt32):Void __self__.value.closeStream(_streamID);
    @:keep
    public dynamic function openStream(_streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_T_http2OpenStreamOptions.T_http2OpenStreamOptions):Void __self__.value.openStream(_streamID, _options);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<stdgo._internal.net.http.Http_T_http2randomWriteScheduler.T_http2randomWriteScheduler>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
