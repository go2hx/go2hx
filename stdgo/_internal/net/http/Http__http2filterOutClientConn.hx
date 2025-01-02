package stdgo._internal.net.http;
function _http2filterOutClientConn(_in:stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>, _exclude:stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>> {
        var _out = (_in.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_T_http2ClientConn.T_http2ClientConn>>);
        for (__137 => _v in _in) {
            if (_v != (_exclude)) {
                _out = (_out.__append__(_v));
            };
        };
        if ((_in.length) != ((_out.length))) {
            _in[((_in.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] = null;
        };
        return _out;
    }
