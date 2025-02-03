package stdgo.net.http;
class Response_static_extension {
    static public function write(_r:Response, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension.write(_r, _w);
    }
    static public function protoAtLeast(_r:Response, _major:StdTypes.Int, _minor:StdTypes.Int):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        final _major = (_major : stdgo.GoInt);
        final _minor = (_minor : stdgo.GoInt);
        return stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension.protoAtLeast(_r, _major, _minor);
    }
    static public function location(_r:Response):stdgo.Tuple<stdgo._internal.net.url.Url_URL.URL, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return {
            final obj = stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension.location(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function cookies(_r:Response):Array<Cookie> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Response.Response>);
        return [for (i in stdgo._internal.net.http.Http_Response_static_extension.Response_static_extension.cookies(_r)) i];
    }
}
