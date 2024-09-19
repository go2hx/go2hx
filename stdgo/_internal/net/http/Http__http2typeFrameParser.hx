package stdgo._internal.net.http;
function _http2typeFrameParser(_t:stdgo._internal.net.http.Http_T_http2FrameType.T_http2FrameType):stdgo._internal.net.http.Http_T_http2frameParser.T_http2frameParser {
        {
            var _f = (stdgo._internal.net.http.Http__http2frameParsers._http2frameParsers[_t] ?? (null : stdgo._internal.net.http.Http_T_http2frameParser.T_http2frameParser) : stdgo._internal.net.http.Http_T_http2frameParser.T_http2frameParser);
            if (_f != null) {
                return _f;
            };
        };
        return stdgo._internal.net.http.Http__http2parseUnknownFrame._http2parseUnknownFrame;
    }
