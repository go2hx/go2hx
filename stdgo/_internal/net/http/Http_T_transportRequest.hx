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
    @:embedded
    public function addCookie(_c:stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>) this.request.addCookie(_c);
    @:embedded
    public function basicAuth():{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } return this.request.basicAuth();
    @:embedded
    public function clone(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return this.request.clone(_ctx);
    @:embedded
    public function context():stdgo._internal.context.Context_Context.Context return this.request.context();
    @:embedded
    public function cookie(__0:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>; var _1 : stdgo.Error; } return this.request.cookie(__0);
    @:embedded
    public function cookies():stdgo.Slice<stdgo.Ref<stdgo._internal.net.http.Http_Cookie.Cookie>> return this.request.cookies();
    @:embedded
    public function formFile(__0:stdgo.GoString):{ var _0 : stdgo._internal.mime.multipart.Multipart_File.File; var _1 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_FileHeader.FileHeader>; var _2 : stdgo.Error; } return this.request.formFile(__0);
    @:embedded
    public function formValue(__0:stdgo.GoString):stdgo.GoString return this.request.formValue(__0);
    @:embedded
    public function multipartReader():{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return this.request.multipartReader();
    @:embedded
    public function parseForm():stdgo.Error return this.request.parseForm();
    @:embedded
    public function parseMultipartForm(__0:stdgo.GoInt64):stdgo.Error return this.request.parseMultipartForm(__0);
    @:embedded
    public function postFormValue(__0:stdgo.GoString):stdgo.GoString return this.request.postFormValue(__0);
    @:embedded
    public function protoAtLeast(_year:stdgo.GoInt, _week:stdgo.GoInt):Bool return this.request.protoAtLeast(_year, _week);
    @:embedded
    public function referer():stdgo.GoString return this.request.referer();
    @:embedded
    public function setBasicAuth(_key:stdgo.GoString, _value:stdgo.GoString) this.request.setBasicAuth(_key, _value);
    @:embedded
    public function userAgent():stdgo.GoString return this.request.userAgent();
    @:embedded
    public function withContext(_ctx:stdgo._internal.context.Context_Context.Context):stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> return this.request.withContext(_ctx);
    @:embedded
    public function write(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return this.request.write(_w);
    @:embedded
    public function writeProxy(_w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error return this.request.writeProxy(_w);
    @:embedded
    public function _closeBody():stdgo.Error return this.request._closeBody();
    @:embedded
    public function _expectsContinue():Bool return this.request._expectsContinue();
    @:embedded
    public function _isH2Upgrade():Bool return this.request._isH2Upgrade();
    @:embedded
    public function _isReplayable():Bool return this.request._isReplayable();
    @:embedded
    public function _multipartReader(__0:Bool):{ var _0 : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Reader.Reader>; var _1 : stdgo.Error; } return this.request._multipartReader(__0);
    @:embedded
    public function _outgoingLength():stdgo.GoInt64 return this.request._outgoingLength();
    @:embedded
    public function _requiresHTTP1():Bool return this.request._requiresHTTP1();
    @:embedded
    public function _wantsClose():Bool return this.request._wantsClose();
    @:embedded
    public function _wantsHttp10KeepAlive():Bool return this.request._wantsHttp10KeepAlive();
    @:embedded
    public function _write(_w:stdgo._internal.io.Io_Writer.Writer, _usingProxy:Bool, _extraHeaders:stdgo._internal.net.http.Http_Header.Header, _waitForContinue:() -> Bool):stdgo.Error return this.request._write(_w, _usingProxy, _extraHeaders, _waitForContinue);
    public function __copy__() {
        return new T_transportRequest(request, _extra, _trace, _cancelKey, _mu, _err);
    }
}
