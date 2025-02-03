package stdgo.net.http;
class Request_static_extension {
    static public function formFile(_r:Request, _key:String):stdgo.Tuple.Tuple3<stdgo._internal.mime.multipart.Multipart_File.File, stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _key = (_key : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.formFile(_r, _key);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function postFormValue(_r:Request, _key:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.postFormValue(_r, _key);
    }
    static public function formValue(_r:Request, _key:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _key = (_key : stdgo.GoString);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.formValue(_r, _key);
    }
    static public function parseMultipartForm(_r:Request, _maxMemory:haxe.Int64):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _maxMemory = (_maxMemory : stdgo.GoInt64);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.parseMultipartForm(_r, _maxMemory);
    }
    static public function parseForm(_r:Request):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.parseForm(_r);
    }
    static public function setBasicAuth(_r:Request, _username:String, _password:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _username = (_username : stdgo.GoString);
        final _password = (_password : stdgo.GoString);
        stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.setBasicAuth(_r, _username, _password);
    }
    static public function basicAuth(_r:Request):stdgo.Tuple.Tuple3<String, String, Bool> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.basicAuth(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function writeProxy(_r:Request, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.writeProxy(_r, _w);
    }
    static public function write(_r:Request, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.write(_r, _w);
    }
    static public function multipartReader(_r:Request):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_Reader.Reader, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.multipartReader(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function referer(_r:Request):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.referer(_r);
    }
    static public function addCookie(_r:Request, _c:Cookie):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _c = (_c : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>);
        stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.addCookie(_r, _c);
    }
    static public function cookie(_r:Request, _name:String):stdgo.Tuple<Cookie, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _name = (_name : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.cookie(_r, _name);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function cookies(_r:Request):Array<Cookie> {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return [for (i in stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.cookies(_r)) i];
    }
    static public function userAgent(_r:Request):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.userAgent(_r);
    }
    static public function protoAtLeast(_r:Request, _major:StdTypes.Int, _minor:StdTypes.Int):Bool {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        final _major = (_major : stdgo.GoInt);
        final _minor = (_minor : stdgo.GoInt);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.protoAtLeast(_r, _major, _minor);
    }
    static public function clone(_r:Request, _ctx:stdgo._internal.context.Context_Context.Context):Request {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.clone(_r, _ctx);
    }
    static public function withContext(_r:Request, _ctx:stdgo._internal.context.Context_Context.Context):Request {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.withContext(_r, _ctx);
    }
    static public function context(_r:Request):stdgo._internal.context.Context_Context.Context {
        final _r = (_r : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
        return stdgo._internal.net.http.Http_Request_static_extension.Request_static_extension.context(_r);
    }
}
