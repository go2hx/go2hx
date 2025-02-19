package stdgo._internal.net.http;
@:keep @:allow(stdgo._internal.net.http.Http.Request_asInterface) class Request_static_extension {
    @:keep
    @:tdfield
    static public function formFile( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } throw "Request:net.http.formFile is not yet implemented";
    @:keep
    @:tdfield
    static public function postFormValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):stdgo.GoString throw "Request:net.http.postFormValue is not yet implemented";
    @:keep
    @:tdfield
    static public function formValue( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _key:stdgo.GoString):stdgo.GoString throw "Request:net.http.formValue is not yet implemented";
    @:keep
    @:tdfield
    static public function parseMultipartForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _maxMemory:stdgo.GoInt64):stdgo.Error throw "Request:net.http.parseMultipartForm is not yet implemented";
    @:keep
    @:tdfield
    static public function parseForm( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Error throw "Request:net.http.parseForm is not yet implemented";
    @:keep
    @:tdfield
    static public function setBasicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _username:stdgo.GoString, _password:stdgo.GoString):Void throw "Request:net.http.setBasicAuth is not yet implemented";
    @:keep
    @:tdfield
    static public function basicAuth( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } throw "Request:net.http.basicAuth is not yet implemented";
    @:keep
    @:tdfield
    static public function writeProxy( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error throw "Request:net.http.writeProxy is not yet implemented";
    @:keep
    @:tdfield
    static public function write( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error throw "Request:net.http.write is not yet implemented";
    @:keep
    @:tdfield
    static public function multipartReader( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } throw "Request:net.http.multipartReader is not yet implemented";
    @:keep
    @:tdfield
    static public function referer( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoString throw "Request:net.http.referer is not yet implemented";
    @:keep
    @:tdfield
    static public function addCookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _c:stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>):Void throw "Request:net.http.addCookie is not yet implemented";
    @:keep
    @:tdfield
    static public function cookie( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _name:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } throw "Request:net.http.cookie is not yet implemented";
    @:keep
    @:tdfield
    static public function cookies( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> throw "Request:net.http.cookies is not yet implemented";
    @:keep
    @:tdfield
    static public function userAgent( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo.GoString throw "Request:net.http.userAgent is not yet implemented";
    @:keep
    @:tdfield
    static public function protoAtLeast( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _major:stdgo.GoInt, _minor:stdgo.GoInt):Bool throw "Request:net.http.protoAtLeast is not yet implemented";
    @:keep
    @:tdfield
    static public function clone( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> throw "Request:net.http.clone is not yet implemented";
    @:keep
    @:tdfield
    static public function withContext( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>, _ctx:stdgo._internal.context.Context_context.Context):stdgo.Ref<stdgo._internal.net.http.Http_request.Request> throw "Request:net.http.withContext is not yet implemented";
    @:keep
    @:tdfield
    static public function context( _r:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>):stdgo._internal.context.Context_context.Context throw "Request:net.http.context is not yet implemented";
}
