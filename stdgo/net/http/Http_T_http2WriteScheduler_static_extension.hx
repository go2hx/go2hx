package stdgo.net.http;
class T_http2WriteScheduler_static_extension {
    static public function pop(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.pop(t);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.push(t, _wr);
    }
    static public function adjustStream(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.adjustStream(t, _streamID, _priority);
    }
    static public function closeStream(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, _streamID:std.UInt):Void {
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.closeStream(t, _streamID);
    }
    static public function openStream(t:stdgo._internal.net.http.Http_T_http2WriteScheduler.T_http2WriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_T_http2WriteScheduler_static_extension.T_http2WriteScheduler_static_extension.openStream(t, _streamID, _options);
    }
}
