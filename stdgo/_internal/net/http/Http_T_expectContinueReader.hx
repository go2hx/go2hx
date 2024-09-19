package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_expectContinueReader_static_extension.T_expectContinueReader_static_extension) class T_expectContinueReader {
    public var _resp : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response> = (null : stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>);
    public var _readCloser : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public var _closed : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
    public var _sawEOF : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_ = ({} : stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_);
    public function new(?_resp:stdgo.Ref<stdgo._internal.net.http.Http_T_response.T_response>, ?_readCloser:stdgo._internal.io.Io_ReadCloser.ReadCloser, ?_closed:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_, ?_sawEOF:stdgo._internal.sync.atomic_.Atomic__Bool_.Bool_) {
        if (_resp != null) this._resp = _resp;
        if (_readCloser != null) this._readCloser = _readCloser;
        if (_closed != null) this._closed = _closed;
        if (_sawEOF != null) this._sawEOF = _sawEOF;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_expectContinueReader(_resp, _readCloser, _closed, _sawEOF);
    }
}
