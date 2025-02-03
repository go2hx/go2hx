package stdgo.net.http;
class T_http2FrameWriteRequest_static_extension {
    static public function string(_wr:T_http2FrameWriteRequest):String {
        return stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension.string(_wr);
    }
    static public function consume(_wr:T_http2FrameWriteRequest, _n:StdTypes.Int):stdgo.Tuple.Tuple3<T_http2FrameWriteRequest, T_http2FrameWriteRequest, StdTypes.Int> {
        final _n = (_n : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension.consume(_wr, _n);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function dataSize(_wr:T_http2FrameWriteRequest):StdTypes.Int {
        return stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension.dataSize(_wr);
    }
    static public function streamID(_wr:T_http2FrameWriteRequest):std.UInt {
        return stdgo._internal.net.http.Http_T_http2FrameWriteRequest_static_extension.T_http2FrameWriteRequest_static_extension.streamID(_wr);
    }
}
