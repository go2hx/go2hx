package stdgo.net.http;
class Client_static_extension {
    static public function closeIdleConnections(_c:Client):Void {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.closeIdleConnections(_c);
    }
    static public function head(_c:Client, _url:String):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.head(_c, _url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function postForm(_c:Client, _url:String, _data:stdgo._internal.net.url.Url_Values.Values):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.postForm(_c, _url, _data);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function post(_c:Client, _url:String, _contentType:String, _body:stdgo._internal.io.Io_Reader.Reader):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        final _url = (_url : stdgo.GoString);
        final _contentType = (_contentType : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.post(_c, _url, _contentType, _body);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function do_(_c:Client, _req:Request):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        final _req = (_req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.do_(_c, _req);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function get(_c:Client, _url:String):stdgo.Tuple<Response, stdgo.Error> {
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Client.Client>);
        final _url = (_url : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_Client_static_extension.Client_static_extension.get(_c, _url);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
