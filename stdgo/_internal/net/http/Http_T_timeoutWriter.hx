package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_timeoutWriter_static_extension.T_timeoutWriter_static_extension) class T_timeoutWriter {
    public var _w : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter = (null : stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter);
    public var _h : stdgo._internal.net.http.Http_Header.Header = (null : stdgo._internal.net.http.Http_Header.Header);
    public var _wbuf : stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
    public var _req : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request> = (null : stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>);
    public var _mu : stdgo._internal.sync.Sync_Mutex.Mutex = ({} : stdgo._internal.sync.Sync_Mutex.Mutex);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _wroteHeader : Bool = false;
    public var _code : stdgo.GoInt = 0;
    public function new(?_w:stdgo._internal.net.http.Http_ResponseWriter.ResponseWriter, ?_h:stdgo._internal.net.http.Http_Header.Header, ?_wbuf:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_req:stdgo.Ref<stdgo._internal.net.http.Http_Request.Request>, ?_mu:stdgo._internal.sync.Sync_Mutex.Mutex, ?_err:stdgo.Error, ?_wroteHeader:Bool, ?_code:stdgo.GoInt) {
        if (_w != null) this._w = _w;
        if (_h != null) this._h = _h;
        if (_wbuf != null) this._wbuf = _wbuf;
        if (_req != null) this._req = _req;
        if (_mu != null) this._mu = _mu;
        if (_err != null) this._err = _err;
        if (_wroteHeader != null) this._wroteHeader = _wroteHeader;
        if (_code != null) this._code = _code;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_timeoutWriter(_w, _h, _wbuf, _req, _mu, _err, _wroteHeader, _code);
    }
}
