package stdgo._internal.net.http;
function _http2buildCommonHeaderMaps():Void {
        var _common = (new stdgo.Slice<stdgo.GoString>(57, 57, ...[
("accept" : stdgo.GoString),
("accept-charset" : stdgo.GoString),
("accept-encoding" : stdgo.GoString),
("accept-language" : stdgo.GoString),
("accept-ranges" : stdgo.GoString),
("age" : stdgo.GoString),
("access-control-allow-credentials" : stdgo.GoString),
("access-control-allow-headers" : stdgo.GoString),
("access-control-allow-methods" : stdgo.GoString),
("access-control-allow-origin" : stdgo.GoString),
("access-control-expose-headers" : stdgo.GoString),
("access-control-max-age" : stdgo.GoString),
("access-control-request-headers" : stdgo.GoString),
("access-control-request-method" : stdgo.GoString),
("allow" : stdgo.GoString),
("authorization" : stdgo.GoString),
("cache-control" : stdgo.GoString),
("content-disposition" : stdgo.GoString),
("content-encoding" : stdgo.GoString),
("content-language" : stdgo.GoString),
("content-length" : stdgo.GoString),
("content-location" : stdgo.GoString),
("content-range" : stdgo.GoString),
("content-type" : stdgo.GoString),
("cookie" : stdgo.GoString),
("date" : stdgo.GoString),
("etag" : stdgo.GoString),
("expect" : stdgo.GoString),
("expires" : stdgo.GoString),
("from" : stdgo.GoString),
("host" : stdgo.GoString),
("if-match" : stdgo.GoString),
("if-modified-since" : stdgo.GoString),
("if-none-match" : stdgo.GoString),
("if-unmodified-since" : stdgo.GoString),
("last-modified" : stdgo.GoString),
("link" : stdgo.GoString),
("location" : stdgo.GoString),
("max-forwards" : stdgo.GoString),
("origin" : stdgo.GoString),
("proxy-authenticate" : stdgo.GoString),
("proxy-authorization" : stdgo.GoString),
("range" : stdgo.GoString),
("referer" : stdgo.GoString),
("refresh" : stdgo.GoString),
("retry-after" : stdgo.GoString),
("server" : stdgo.GoString),
("set-cookie" : stdgo.GoString),
("strict-transport-security" : stdgo.GoString),
("trailer" : stdgo.GoString),
("transfer-encoding" : stdgo.GoString),
("user-agent" : stdgo.GoString),
("vary" : stdgo.GoString),
("via" : stdgo.GoString),
("www-authenticate" : stdgo.GoString),
("x-forwarded-for" : stdgo.GoString),
("x-forwarded-proto" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        stdgo._internal.net.http.Http__http2commonLowerHeader._http2commonLowerHeader = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        stdgo._internal.net.http.Http__http2commonCanonHeader._http2commonCanonHeader = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        for (__143 => _v in _common) {
            var _chk = (stdgo._internal.net.http.Http_canonicalHeaderKey.canonicalHeaderKey(_v?.__copy__())?.__copy__() : stdgo.GoString);
            stdgo._internal.net.http.Http__http2commonLowerHeader._http2commonLowerHeader[_chk] = _v?.__copy__();
            stdgo._internal.net.http.Http__http2commonCanonHeader._http2commonCanonHeader[_v] = _chk?.__copy__();
        };
    }
