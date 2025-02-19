package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Response_asInterface) class Response_static_extension {
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error throw "Response:net.http.write is not yet implemented";
    @:keep
    @:tdfield
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool throw "Response:net.http.protoAtLeast is not yet implemented";
    @:keep
    @:tdfield
    static public function location( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } throw "Response:net.http.location is not yet implemented";
    @:keep
    @:tdfield
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_response.Response>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> throw "Response:net.http.cookies is not yet implemented";
}
