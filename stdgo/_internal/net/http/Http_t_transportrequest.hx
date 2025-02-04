package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_t_transportrequest_static_extension.T_transportRequest_static_extension) class T_transportRequest {
    @:embedded
    public var request : stdgo.Ref<stdgo._internal.net.http.Http_request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_request.Request>);
    public function new(?request:stdgo.Ref<stdgo._internal.net.http.Http_request.Request>) {
        if (request != null) this.request = request;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var addCookie(get, never) : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_addCookie():stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie> -> Void return @:check32 this.request.addCookie;
    public var basicAuth(get, never) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_basicAuth():() -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:check32 this.request.basicAuth;
    public var clone(get, never) : stdgo._internal.context.Context_context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_request.Request>;
    @:embedded
    @:embeddededffieldsffun
    public function get_clone():stdgo._internal.context.Context_context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:check32 this.request.clone;
    public var context(get, never) : () -> stdgo._internal.context.Context_context.Context;
    @:embedded
    @:embeddededffieldsffun
    public function get_context():() -> stdgo._internal.context.Context_context.Context return @:check32 this.request.context;
    public var cookie(get, never) : stdgo.GoString -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_cookie():stdgo.GoString -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>; var _1 : stdgo.Error; } return @:check32 this.request.cookie;
    public var cookies(get, never) : () -> stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>>;
    @:embedded
    @:embeddededffieldsffun
    public function get_cookies():() -> stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_cookie.Cookie>> return @:check32 this.request.cookies;
    public var formFile(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_formFile():stdgo.GoString -> { var _0 : stdgo._internal.mime.multipart.Multipart_file.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_fileheader.FileHeader>; var _2 : stdgo.Error; } return @:check32 this.request.formFile;
    public var formValue(get, never) : stdgo.GoString -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_formValue():stdgo.GoString -> stdgo.GoString return @:check32 this.request.formValue;
    public var multipartReader(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_multipartReader():() -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:check32 this.request.multipartReader;
    public var parseForm(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_parseForm():() -> stdgo.Error return @:check32 this.request.parseForm;
    public var parseMultipartForm(get, never) : stdgo.GoInt64 -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_parseMultipartForm():stdgo.GoInt64 -> stdgo.Error return @:check32 this.request.parseMultipartForm;
    public var postFormValue(get, never) : stdgo.GoString -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_postFormValue():stdgo.GoString -> stdgo.GoString return @:check32 this.request.postFormValue;
    public var protoAtLeast(get, never) : (stdgo.GoInt, stdgo.GoInt) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_protoAtLeast():(stdgo.GoInt, stdgo.GoInt) -> Bool return @:check32 this.request.protoAtLeast;
    public var referer(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_referer():() -> stdgo.GoString return @:check32 this.request.referer;
    public var setBasicAuth(get, never) : (stdgo.GoString, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setBasicAuth():(stdgo.GoString, stdgo.GoString) -> Void return @:check32 this.request.setBasicAuth;
    public var userAgent(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_userAgent():() -> stdgo.GoString return @:check32 this.request.userAgent;
    public var withContext(get, never) : stdgo._internal.context.Context_context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_request.Request>;
    @:embedded
    @:embeddededffieldsffun
    public function get_withContext():stdgo._internal.context.Context_context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_request.Request> return @:check32 this.request.withContext;
    public var write(get, never) : stdgo._internal.io.Io_writer.Writer -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo._internal.io.Io_writer.Writer -> stdgo.Error return @:check32 this.request.write;
    public var writeProxy(get, never) : stdgo._internal.io.Io_writer.Writer -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_writeProxy():stdgo._internal.io.Io_writer.Writer -> stdgo.Error return @:check32 this.request.writeProxy;
    public var _closeBody(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__closeBody():() -> stdgo.Error return @:check32 this.request._closeBody;
    public var _expectsContinue(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__expectsContinue():() -> Bool return @:check32 this.request._expectsContinue;
    public var _isH2Upgrade(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isH2Upgrade():() -> Bool return @:check32 this.request._isH2Upgrade;
    public var _isReplayable(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isReplayable():() -> Bool return @:check32 this.request._isReplayable;
    public var _multipartReader(get, never) : Bool -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__multipartReader():Bool -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_reader.Reader>; var _1 : stdgo.Error; } return @:check32 this.request._multipartReader;
    public var _outgoingLength(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__outgoingLength():() -> stdgo.GoInt64 return @:check32 this.request._outgoingLength;
    public var _requiresHTTP1(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__requiresHTTP1():() -> Bool return @:check32 this.request._requiresHTTP1;
    public var _wantsClose(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__wantsClose():() -> Bool return @:check32 this.request._wantsClose;
    public var _wantsHttp10KeepAlive(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__wantsHttp10KeepAlive():() -> Bool return @:check32 this.request._wantsHttp10KeepAlive;
    public var _write(get, never) : (stdgo._internal.io.Io_writer.Writer, Bool, stdgo._internal.net.http.Http_header.Header, () -> Bool) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__write():(stdgo._internal.io.Io_writer.Writer, Bool, stdgo._internal.net.http.Http_header.Header, () -> Bool) -> stdgo.Error return @:check32 this.request._write;
    public function __copy__() {
        return new T_transportRequest(request);
    }
}
