package stdgo._internal.net.http;
var _http2frameParsers : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType, stdgo._internal.net.http.Http_T_http2frameParser.T_http2frameParser> = ({
        final x = new stdgo.GoMap.GoIntMap<stdgo._internal.net.http.Http_T_http2frameParser.T_http2frameParser>();
        x.__defaultValue__ = () -> (null : stdgo._internal.net.http.Http_T_http2frameParser.T_http2frameParser);
        x.set((0 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parseDataFrame._http2parseDataFrame);
x.set((1 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parseHeadersFrame._http2parseHeadersFrame);
x.set((2 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parsePriorityFrame._http2parsePriorityFrame);
x.set((3 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parseRSTStreamFrame._http2parseRSTStreamFrame);
x.set((4 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parseSettingsFrame._http2parseSettingsFrame);
x.set((5 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parsePushPromise._http2parsePushPromise);
x.set((6 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parsePingFrame._http2parsePingFrame);
x.set((7 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parseGoAwayFrame._http2parseGoAwayFrame);
x.set((8 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parseWindowUpdateFrame._http2parseWindowUpdateFrame);
x.set((9 : stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType), stdgo._internal.net.http.Http__http2parseContinuationFrame._http2parseContinuationFrame);
        x;
    } : stdgo.GoMap<stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType, stdgo._internal.net.http.Http_T_http2frameParser.T_http2frameParser>);
