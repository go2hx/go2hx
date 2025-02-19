package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Client_asInterface) class Client_static_extension {
    @:keep
    @:tdfield
    static public function closeIdleConnections( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>):Void throw "Client:net.http.closeIdleConnections is not yet implemented";
    @:keep
    @:tdfield
    static public function head( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "Client:net.http.head is not yet implemented";
    @:keep
    @:tdfield
    static public function postForm( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString, _data:stdgo._internal.net.url.Url_values.Values):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "Client:net.http.postForm is not yet implemented";
    @:keep
    @:tdfield
    static public function post( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString, _contentType:stdgo.GoString, _body:stdgo._internal.io.Io_reader.Reader):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "Client:net.http.post is not yet implemented";
    @:keep
    @:tdfield
    static public function do_( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _req:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "Client:net.http.do_ is not yet implemented";
    @:keep
    @:tdfield
    static public function get( _c:stdgo.Ref<stdgo._internal.net.http.Http_client.Client>, _url:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_response.Response>; var _1 : stdgo.Error; } throw "Client:net.http.get is not yet implemented";
}
