package stdgo.net.http;
class T_transportRequest_static_extension {
    public static function _write(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer, _1:Bool, _2:Header, _3:() -> Bool):stdgo.Error {
        final _3 = _3;
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._write(__self__, _0, _1, _2, _3);
    }
    public static function _wantsHttp10KeepAlive(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._wantsHttp10KeepAlive(__self__);
    }
    public static function _wantsClose(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._wantsClose(__self__);
    }
    public static function _requiresHTTP1(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._requiresHTTP1(__self__);
    }
    public static function _outgoingLength(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):haxe.Int64 {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._outgoingLength(__self__);
    }
    public static function _multipartReader(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:Bool):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_Reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._multipartReader(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function _isReplayable(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._isReplayable(__self__);
    }
    public static function _isH2Upgrade(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._isH2Upgrade(__self__);
    }
    public static function _expectsContinue(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Bool {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._expectsContinue(__self__);
    }
    public static function _closeBody(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension._closeBody(__self__);
    }
    public static function writeProxy(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.writeProxy(__self__, _0);
    }
    public static function write(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.write(__self__, _0);
    }
    public static function withContext(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.context.Context_Context.Context):Request {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.withContext(__self__, _0);
    }
    public static function userAgent(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):String {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.userAgent(__self__);
    }
    public static function setBasicAuth(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String, _1:String):Void {
        final _0 = (_0 : stdgo.GoString);
        final _1 = (_1 : stdgo.GoString);
        stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.setBasicAuth(__self__, _0, _1);
    }
    public static function referer(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):String {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.referer(__self__);
    }
    public static function protoAtLeast(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:StdTypes.Int, _1:StdTypes.Int):Bool {
        final _0 = (_0 : stdgo.GoInt);
        final _1 = (_1 : stdgo.GoInt);
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.protoAtLeast(__self__, _0, _1);
    }
    public static function postFormValue(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String):String {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.postFormValue(__self__, _0);
    }
    public static function parseMultipartForm(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:haxe.Int64):stdgo.Error {
        final _0 = (_0 : stdgo.GoInt64);
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.parseMultipartForm(__self__, _0);
    }
    public static function parseForm(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Error {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.parseForm(__self__);
    }
    public static function multipartReader(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Tuple<stdgo._internal.mime.multipart.Multipart_Reader.Reader, stdgo.Error> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.multipartReader(__self__);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function formValue(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String):String {
        final _0 = (_0 : stdgo.GoString);
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.formValue(__self__, _0);
    }
    public static function formFile(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String):stdgo.Tuple.Tuple3<stdgo._internal.mime.multipart.Multipart_File.File, stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.formFile(__self__, _0);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function cookies(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):Array<Cookie> {
        return [for (i in stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.cookies(__self__)) i];
    }
    public static function cookie(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:String):stdgo.Tuple<Cookie, stdgo.Error> {
        final _0 = (_0 : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.cookie(__self__, _0);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    public static function context(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo._internal.context.Context_Context.Context {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.context(__self__);
    }
    public static function clone(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:stdgo._internal.context.Context_Context.Context):Request {
        return stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.clone(__self__, _0);
    }
    public static function basicAuth(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest):stdgo.Tuple.Tuple3<String, String, Bool> {
        return {
            final obj = stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.basicAuth(__self__);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    public static function addCookie(__self__:stdgo._internal.net.http.Http_T_transportRequest.T_transportRequest, _0:Cookie):Void {
        final _0 = (_0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>);
        stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension.addCookie(__self__, _0);
    }
}
