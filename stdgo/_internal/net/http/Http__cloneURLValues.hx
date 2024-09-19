package stdgo._internal.net.http;
function _cloneURLValues(_v:stdgo._internal.net.url.Url_Values.Values):stdgo._internal.net.url.Url_Values.Values {
        if (_v == null) {
            return null;
        };
        return ((_v : stdgo._internal.net.http.Http_Header.Header).clone() : stdgo._internal.net.url.Url_Values.Values);
    }
