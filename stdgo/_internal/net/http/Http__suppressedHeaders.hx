package stdgo._internal.net.http;
function _suppressedHeaders(_status:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        if (_status == ((304 : stdgo.GoInt))) {
            return stdgo._internal.net.http.Http__suppressedHeaders304._suppressedHeaders304;
        } else if (!stdgo._internal.net.http.Http__bodyAllowedForStatus._bodyAllowedForStatus(_status)) {
            return stdgo._internal.net.http.Http__suppressedHeadersNoBody._suppressedHeadersNoBody;
        };
        return (null : stdgo.Slice<stdgo.GoString>);
    }
