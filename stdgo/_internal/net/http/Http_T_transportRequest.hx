package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_transportRequest_static_extension.T_transportRequest_static_extension) class T_transportRequest {
    @:embedded
    public var request : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var _extra : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _trace : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace> = (null : stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>);
    public var _cancelKey : stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey = ({} : stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?request:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?_extra:stdgo._internal.net.http.Http_Header.Header, ?_trace:stdgo.Ref<stdgo._internal.net.http.httptrace.Httptrace_ClientTrace.ClientTrace>, ?_cancelKey:stdgo._internal.net.http.Http_T_cancelKey.T_cancelKey, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error) {
        if (request != null) this.request = request;
        if (_extra != null) this._extra = _extra;
        if (_trace != null) this._trace = _trace;
        if (_cancelKey != null) this._cancelKey = _cancelKey;
        if (_mu != null) this._mu = _mu;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var addCookie(get, never) : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_addCookie():stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie> -> Void return @:check3 (this.request ?? throw "null pointer derefrence").addCookie;
    public var basicAuth(get, never) : () -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; };
    @:embedded
    @:embeddededffieldsffun
    public function get_basicAuth():() -> { var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return @:check3 (this.request ?? throw "null pointer derefrence").basicAuth;
    public var clone(get, never) : stdgo._internal.context.Context_Context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>;
    @:embedded
    @:embeddededffieldsffun
    public function get_clone():stdgo._internal.context.Context_Context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return @:check3 (this.request ?? throw "null pointer derefrence").clone;
    public var context(get, never) : () -> stdgo._internal.context.Context_Context.Context;
    @:embedded
    @:embeddededffieldsffun
    public function get_context():() -> stdgo._internal.context.Context_Context.Context return @:check3 (this.request ?? throw "null pointer derefrence").context;
    public var cookie(get, never) : stdgo.GoString -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_cookie():stdgo.GoString -> { var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; } return @:check3 (this.request ?? throw "null pointer derefrence").cookie;
    public var cookies(get, never) : () -> stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>>;
    @:embedded
    @:embeddededffieldsffun
    public function get_cookies():() -> stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> return @:check3 (this.request ?? throw "null pointer derefrence").cookies;
    public var formFile(get, never) : stdgo.GoString -> { var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_formFile():stdgo.GoString -> { var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; } return @:check3 (this.request ?? throw "null pointer derefrence").formFile;
    public var formValue(get, never) : stdgo.GoString -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_formValue():stdgo.GoString -> stdgo.GoString return @:check3 (this.request ?? throw "null pointer derefrence").formValue;
    public var multipartReader(get, never) : () -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get_multipartReader():() -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return @:check3 (this.request ?? throw "null pointer derefrence").multipartReader;
    public var parseForm(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_parseForm():() -> stdgo.Error return @:check3 (this.request ?? throw "null pointer derefrence").parseForm;
    public var parseMultipartForm(get, never) : stdgo.GoInt64 -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_parseMultipartForm():stdgo.GoInt64 -> stdgo.Error return @:check3 (this.request ?? throw "null pointer derefrence").parseMultipartForm;
    public var postFormValue(get, never) : stdgo.GoString -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_postFormValue():stdgo.GoString -> stdgo.GoString return @:check3 (this.request ?? throw "null pointer derefrence").postFormValue;
    public var protoAtLeast(get, never) : (stdgo.GoInt, stdgo.GoInt) -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_protoAtLeast():(stdgo.GoInt, stdgo.GoInt) -> Bool return @:check3 (this.request ?? throw "null pointer derefrence").protoAtLeast;
    public var referer(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_referer():() -> stdgo.GoString return @:check3 (this.request ?? throw "null pointer derefrence").referer;
    public var setBasicAuth(get, never) : (stdgo.GoString, stdgo.GoString) -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get_setBasicAuth():(stdgo.GoString, stdgo.GoString) -> Void return @:check3 (this.request ?? throw "null pointer derefrence").setBasicAuth;
    public var userAgent(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_userAgent():() -> stdgo.GoString return @:check3 (this.request ?? throw "null pointer derefrence").userAgent;
    public var withContext(get, never) : stdgo._internal.context.Context_Context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>;
    @:embedded
    @:embeddededffieldsffun
    public function get_withContext():stdgo._internal.context.Context_Context.Context -> stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return @:check3 (this.request ?? throw "null pointer derefrence").withContext;
    public var write(get, never) : stdgo._internal.io.Io_Writer.Writer -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_write():stdgo._internal.io.Io_Writer.Writer -> stdgo.Error return @:check3 (this.request ?? throw "null pointer derefrence").write;
    public var writeProxy(get, never) : stdgo._internal.io.Io_Writer.Writer -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get_writeProxy():stdgo._internal.io.Io_Writer.Writer -> stdgo.Error return @:check3 (this.request ?? throw "null pointer derefrence").writeProxy;
    public var _closeBody(get, never) : () -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__closeBody():() -> stdgo.Error return @:check3 (this.request ?? throw "null pointer derefrence")._closeBody;
    public var _expectsContinue(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__expectsContinue():() -> Bool return @:check3 (this.request ?? throw "null pointer derefrence")._expectsContinue;
    public var _isH2Upgrade(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isH2Upgrade():() -> Bool return @:check3 (this.request ?? throw "null pointer derefrence")._isH2Upgrade;
    public var _isReplayable(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__isReplayable():() -> Bool return @:check3 (this.request ?? throw "null pointer derefrence")._isReplayable;
    public var _multipartReader(get, never) : Bool -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; };
    @:embedded
    @:embeddededffieldsffun
    public function get__multipartReader():Bool -> { var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return @:check3 (this.request ?? throw "null pointer derefrence")._multipartReader;
    public var _outgoingLength(get, never) : () -> stdgo.GoInt64;
    @:embedded
    @:embeddededffieldsffun
    public function get__outgoingLength():() -> stdgo.GoInt64 return @:check3 (this.request ?? throw "null pointer derefrence")._outgoingLength;
    public var _requiresHTTP1(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__requiresHTTP1():() -> Bool return @:check3 (this.request ?? throw "null pointer derefrence")._requiresHTTP1;
    public var _wantsClose(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__wantsClose():() -> Bool return @:check3 (this.request ?? throw "null pointer derefrence")._wantsClose;
    public var _wantsHttp10KeepAlive(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get__wantsHttp10KeepAlive():() -> Bool return @:check3 (this.request ?? throw "null pointer derefrence")._wantsHttp10KeepAlive;
    public var _write(get, never) : (stdgo._internal.io.Io_Writer.Writer, Bool, stdgo._internal.net.http.Http_Header.Header, () -> Bool) -> stdgo.Error;
    @:embedded
    @:embeddededffieldsffun
    public function get__write():(stdgo._internal.io.Io_Writer.Writer, Bool, stdgo._internal.net.http.Http_Header.Header, () -> Bool) -> stdgo.Error return @:check3 (this.request ?? throw "null pointer derefrence")._write;
    public function __copy__() {
        return new T_transportRequest(request, _extra, _trace, _cancelKey, _mu, _err);
    }
}
