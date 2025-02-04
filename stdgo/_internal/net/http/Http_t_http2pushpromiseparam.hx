package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_http2pushpromiseparam_static_extension.T_http2PushPromiseParam_static_extension) class T_http2PushPromiseParam {
    public var streamID : stdgo.GoUInt32 = 0;
    public var promiseID : stdgo.GoUInt32 = 0;
    public var blockFragment : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var endHeaders : Bool = false;
    public var padLength : stdgo.GoUInt8 = 0;
    public function new(?streamID:stdgo.GoUInt32, ?promiseID:stdgo.GoUInt32, ?blockFragment:stdgo.Slice<stdgo.GoUInt8>, ?endHeaders:Bool, ?padLength:stdgo.GoUInt8) {
        if (streamID != null) this.streamID = streamID;
        if (promiseID != null) this.promiseID = promiseID;
        if (blockFragment != null) this.blockFragment = blockFragment;
        if (endHeaders != null) this.endHeaders = endHeaders;
        if (padLength != null) this.padLength = padLength;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_http2PushPromiseParam(streamID, promiseID, blockFragment, endHeaders, padLength);
    }
}
