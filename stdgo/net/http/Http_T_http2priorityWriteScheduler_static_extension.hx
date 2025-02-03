package stdgo.net.http;
class T_http2priorityWriteScheduler_static_extension {
    static public function pop(_ws:T_http2priorityWriteScheduler):stdgo.Tuple<T_http2FrameWriteRequest, Bool> {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.pop(_ws);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function push(_ws:T_http2priorityWriteScheduler, _wr:T_http2FrameWriteRequest):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>);
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.push(_ws, _wr);
    }
    static public function adjustStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt, _priority:T_http2PriorityParam):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.adjustStream(_ws, _streamID, _priority);
    }
    static public function closeStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.closeStream(_ws, _streamID);
    }
    static public function openStream(_ws:T_http2priorityWriteScheduler, _streamID:std.UInt, _options:T_http2OpenStreamOptions):Void {
        final _ws = (_ws : stdgo.Ref<stdgo._internal.net.http.Http_T_http2priorityWriteScheduler.T_http2priorityWriteScheduler>);
        final _streamID = (_streamID : stdgo.GoUInt32);
        stdgo._internal.net.http.Http_T_http2priorityWriteScheduler_static_extension.T_http2priorityWriteScheduler_static_extension.openStream(_ws, _streamID, _options);
    }
}
