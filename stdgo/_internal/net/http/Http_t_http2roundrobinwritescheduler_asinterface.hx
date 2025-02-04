package stdgo._internal.net.http;
class T_http2roundRobinWriteScheduler_asInterface {
    @:keep
    @:tdfield
    public dynamic function pop():{ var _0 : stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest; var _1 : Bool; } return @:_0 __self__.value.pop();
    @:keep
    @:tdfield
    public dynamic function push(_wr:stdgo._internal.net.http.Http_t_http2framewriterequest.T_http2FrameWriteRequest):Void @:_0 __self__.value.push(_wr);
    @:keep
    @:tdfield
    public dynamic function adjustStream(_streamID:stdgo.GoUInt32, _priority:stdgo._internal.net.http.Http_t_http2priorityparam.T_http2PriorityParam):Void @:_0 __self__.value.adjustStream(_streamID, _priority);
    @:keep
    @:tdfield
    public dynamic function closeStream(_streamID:stdgo.GoUInt32):Void @:_0 __self__.value.closeStream(_streamID);
    @:keep
    @:tdfield
    public dynamic function openStream(_streamID:stdgo.GoUInt32, _options:stdgo._internal.net.http.Http_t_http2openstreamoptions.T_http2OpenStreamOptions):Void @:_0 __self__.value.openStream(_streamID, _options);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo._internal.net.http.Http_t_http2roundrobinwriteschedulerpointer.T_http2roundRobinWriteSchedulerPointer;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
