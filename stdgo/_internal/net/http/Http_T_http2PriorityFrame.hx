package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_http2PriorityFrame_static_extension.T_http2PriorityFrame_static_extension) class T_http2PriorityFrame {
    @:embedded
    public var _http2FrameHeader : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader = ({} : stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader);
    @:embedded
    public var _http2PriorityParam : stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam = ({} : stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam);
    public function new(?_http2FrameHeader:stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader, ?_http2PriorityParam:stdgo._internal.net.http.Http_T_http2PriorityParam.T_http2PriorityParam) {
        if (_http2FrameHeader != null) this._http2FrameHeader = _http2FrameHeader;
        if (_http2PriorityParam != null) this._http2PriorityParam = _http2PriorityParam;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public var header(get, never) : () -> stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader;
    @:embedded
    @:embeddededffieldsffun
    public function get_header():() -> stdgo._internal.net.http.Http_T_http2FrameHeader.T_http2FrameHeader return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence").header;
    public var isZero(get, never) : () -> Bool;
    @:embedded
    @:embeddededffieldsffun
    public function get_isZero():() -> Bool return @:check3 (this._http2PriorityParam ?? throw "null pointer derefrence").isZero;
    public var string(get, never) : () -> stdgo.GoString;
    @:embedded
    @:embeddededffieldsffun
    public function get_string():() -> stdgo.GoString return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence").string;
    public var _checkValid(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__checkValid():() -> Void return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence")._checkValid;
    public var _invalidate(get, never) : () -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__invalidate():() -> Void return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence")._invalidate;
    public var _writeDebug(get, never) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> -> Void;
    @:embedded
    @:embeddededffieldsffun
    public function get__writeDebug():stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer> -> Void return @:check3 (this._http2FrameHeader ?? throw "null pointer derefrence")._writeDebug;
    public function __copy__() {
        return new T_http2PriorityFrame(_http2FrameHeader, _http2PriorityParam);
    }
}
